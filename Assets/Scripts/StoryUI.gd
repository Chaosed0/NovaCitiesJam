class_name StoryUI
extends Control

@export var debug : bool

var _textScene : PackedScene
var _choiceScene : PackedScene
var _inputChoiceScene : PackedScene
var _separator : PackedScene
var _background : TextureRect
var _story : InkPlayer
var _bottomSpacer : Control
var _scrollContainer : ScrollContainer
var _content : MarginContainer
var _container : VBoxContainer

var _margin : float
var _currentTween : Tween
var _currentChoices : Array[StoryChoice]
var _currentInputs : Array[StoryInputChoice]
var _currentStoryText : StoryTextContainer
var _backgroundTween : Tween

var _storyIsLoaded : bool
var _deferredKnot : String
var _randomizeNextChoices : bool

signal on_story_loaded_signal
signal on_story_tween_begin
signal on_story_tween_complete
signal on_story_complete(story : InkPlayer)

func _ready() -> void:
	print("StoryUI readying")

	_textScene = ResourceLoader.load("res://Assets/UI/StoryTextContainer.tscn")
	_choiceScene = ResourceLoader.load("res://Assets/UI/StoryChoice.tscn")
	_inputChoiceScene = ResourceLoader.load("res://Assets/UI/StoryInputChoice.tscn")
	_separator = ResourceLoader.load("res://Assets/UI/StorySeparator.tscn")

	_story = get_node("%InkPlayer")
	_bottomSpacer = get_node("%BottomSpacer")
	_background = get_node("%StoryBackground")
	_scrollContainer = get_node("ScrollContainer")
	_content = _scrollContainer.get_node("MarginContainer")
	_container = _content.get_node("VBoxContainer")

	clip_contents = false
	mouse_filter = Control.MOUSE_FILTER_PASS

	_margin = _content.get_theme_constant("margin_top") + _content.get_theme_constant("margin_bottom")

	_storyIsLoaded = false
	_story.loaded.connect(on_story_loaded)
	_story.create_story()

	for child in _container.get_children():
		if child != _bottomSpacer:
			child.queue_free()

func load_story(knot: String) -> void:
	if !_storyIsLoaded:
		print("Deferred knot set to ", knot)
		_deferredKnot = knot
	else:
		print("Directly loading knot ", knot)
		load_story_internal(knot)

func on_story_loaded(successfully: bool) -> void:
	_storyIsLoaded = successfully

	if !successfully:
		print("Story was not loaded successfully!")
	else:
		print("Story loaded successfully!")

	_story.bind_external_function("shuffle_next_choices", self, "randomize_next_choices")
	_story.bind_external_function("change_background", self, "change_background")

	on_story_loaded_signal.emit()

	if _deferredKnot != null:
		load_story_internal(_deferredKnot)

func load_story_internal(knot: String) -> void:
	_story.set_variable("debug", debug)

	if _currentTween != null:
		skip_tween()

	for child in _container.get_children():
		if child != _bottomSpacer:
			child.queue_free()

	if knot != null:
		_story.choose_path(knot)

	continue_story(true);

func continue_story(is_first : bool) -> void:
	var text : String = ""

	while _story.can_continue:
		text += _story.continue_story()

	var tags : Array = _story.current_tags

	for tag : String in tags:
		print(tag)
		if tag.begins_with("LINK:"):
			var link_address : String = tag.substr(5).strip_edges()
			print("LINK ", link_address)
			OS.shell_open(link_address)

	if _currentTween != null:
		skip_tween()

	on_story_tween_begin.emit()

	var newSeparator : Control

	if !is_first:
		newSeparator = _separator.instantiate()
		_container.add_child(newSeparator)

	if !text.is_empty():
		_currentStoryText = _textScene.instantiate()
		_container.add_child(_currentStoryText)
		_currentStoryText.set_story_text(text)

	var choices : Array = _story.current_choices
	var indexes : Array = range(choices.size())

	if _randomizeNextChoices:
		indexes.shuffle()
		_randomizeNextChoices = false

	_currentChoices.clear()

	var i : int = 0

	for index : int in indexes:
		var choice : InkChoice = choices[index]

		if choice.text.begins_with("INPUT_TEXT"):
			var input : StoryInputChoice = _inputChoiceScene.instantiate()
			_container.add_child(input)
			var varName : String = choice.text.get_slice(" ", 1)
			var choiceText : String = choice.text.right(choice.text.length() - "INPUT_TEXT".length() - varName.length() - 2)
			input.initialize(varName, choiceText, choice.index, i)

			input.on_input.connect(on_input_submitted)
			_currentInputs.append(input)
		else:
			var button : StoryChoice = _choiceScene.instantiate()
			_container.add_child(button)
			button.initialize(choice.text, choice.index, i)

			button.on_choice_chosen.connect(on_choice_pressed)
			_currentChoices.append(button)

		i = i + 1

	_container.move_child(_bottomSpacer, _container.get_child_count())
	await get_tree().process_frame
	await get_tree().process_frame
	
	_currentTween = self.create_tween()
	_currentTween.set_parallel()

	var additionalSize : float = 0

	if _currentStoryText != null:
		additionalSize += _currentStoryText.size.y

	for button in _currentChoices:
		additionalSize += button.size.y

	for input in _currentInputs:
		additionalSize += input.size.y

	_bottomSpacer.custom_minimum_size = Vector2(0, _scrollContainer.size.y - additionalSize - _margin)

	if !is_first:
		_currentTween.tween_property(_scrollContainer, "scroll_vertical", newSeparator.position.y + 16, 0.5).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN_OUT)
	else:
		_scrollContainer.scroll_vertical = 0

	if _backgroundTween != null && _backgroundTween.is_running():
		print("waiting for background tween")
		await _backgroundTween.finished
		
		if _currentTween.is_running():
			print("waiting for current tween")
			await _currentTween.finished

		_currentTween = self.create_tween()
		_currentTween.set_parallel()

	_currentTween.finished.connect(on_tween_finished)

	if _currentStoryText != null:
		_currentStoryText.start_typeout(_currentTween)

	if !_story.has_choices:
		_currentTween.chain().tween_callback(complete_story)

	for button in _currentChoices:
		button.initialize_tween(_currentTween)

	for input in _currentInputs:
		input.initialize_tween(_currentTween)

func skip_tween() -> void:
	if _backgroundTween != null:
		_backgroundTween.custom_step(99999)

	if _currentTween != null:
		_currentTween.custom_step(99999)

func on_choice_pressed(index : int) -> void:
	choose_choice_index(index)

func on_input_submitted(varName: String, value: String, index: int) -> void:
	_story.set_variable(varName, value.to_lower())
	choose_choice_index(index)

func choose_choice_index(index: int) -> void:
	_story.choose_choice_index(index);

	for choice in _currentChoices:
		choice.queue_free()

	for choice in _currentInputs:
		choice.queue_free()

	_currentChoices.clear()
	_currentInputs.clear()

	if _currentStoryText != null:
		_currentStoryText.destroy_last_spacer()

	continue_story(false)

func complete_story() -> void:
	print("_story is completed")
	on_story_complete.emit(_story)

func on_tween_finished() -> void:
	_currentTween = null

func randomize_next_choices() -> void:
	_randomizeNextChoices = true

func change_background(bgName: String) -> void:
	var bgPath : String = "res://Assets/Images/Backgrounds/%s.png" % bgName

	if _backgroundTween != null:
		_backgroundTween.kill()

	if !ResourceLoader.exists(bgPath, "Texture2D"):
		print("not exist")
		bgPath = "res://Assets/Images/Backgrounds/tmp-background.png"

	var bg : Texture2D = ResourceLoader.load(bgPath)

	if _background.texture == null:
		print("first background ", bgName, " ", bgPath)
		_background.texture = bg
	else:
		var backgroundTween : Tween = _background.create_tween()

		backgroundTween.tween_property(_background, "modulate:a", 0, 0.5)
		backgroundTween.tween_callback(func() -> void: _background.texture = bg)
		backgroundTween.tween_interval(0.25)
		backgroundTween.tween_property(_background, "modulate:a", 1, 0.5)
		_backgroundTween = backgroundTween
		print("do animation ", bgName, " ", bgPath)

		if _currentTween != null && _currentTween.is_running():
			print("pause current anim")
			_currentTween.pause()
			await _backgroundTween.finished
			print("play current anim")
			_currentTween.play()

func on_tween_complete() -> void:
	on_story_tween_complete.emit()

func _gui_input(event : InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		skip_tween()
		accept_event()
