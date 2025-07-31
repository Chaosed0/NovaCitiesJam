class_name MainMenu
extends Control

var _continueButton : Button
var _startButton : Button
var _creditsButton : Button
var _quitButton : Button
var _backButton : Button
var _music : AudioStreamPlayer

var _storyScene : PackedScene

func _ready() -> void:
	_continueButton = get_node("%ContinueButton/Button")
	_startButton = get_node("%StartButton/Button")
	_creditsButton = get_node("%CreditsButton/Button")
	_quitButton = get_node("%QuitButton/Button")
	_backButton = get_node("%BackButton/Button")
	_music = get_node("Music")

	_storyScene = ResourceLoader.load("res://Assets/Story.tscn")

	_continueButton.get_parent().visible = FileAccess.file_exists(StoryUI.storySavePath)

	_continueButton.pressed.connect(on_continue_pressed)
	_startButton.pressed.connect(on_start_pressed)
	_creditsButton.pressed.connect(on_credits_pressed)
	_quitButton.pressed.connect(on_quit_pressed)
	_backButton.pressed.connect(on_back_pressed)

	_quitButton.visible = !OS.has_feature("web")

	get_node("%Main").visible = true
	get_node("%Credits").visible = false

func on_continue_pressed() -> void:
	Game.instance.load_scene(_storyScene, func(initializer: StoryInitializer) -> void: initializer.initialize_from_load())

func on_start_pressed() -> void:
	Game.instance.load_scene(_storyScene, func(initializer: StoryInitializer) -> void: initializer.initialize_as_new())

func on_credits_pressed() -> void:
	get_node("%Main").visible = false
	get_node("%Credits").visible = true

func on_back_pressed() -> void:
	get_node("%Main").visible = true
	get_node("%Credits").visible = false

func on_quit_pressed() -> void:
	get_tree().quit()

func _before_disabled() -> void:
	_continueButton.disabled = true
	_startButton.disabled = true
	_creditsButton.disabled = true
	_quitButton.disabled = true
	_backButton.disabled = true

	var tween : Tween = create_tween()
	tween.tween_property(_music, "volume_linear", 0, 0.5)
