class_name MainMenu
extends Control

func _ready() -> void:
	var continueButton: Button = get_node("%ContinueButton/Button")
	var startButton: Button = get_node("%StartButton/Button")
	var creditsButton: Button = get_node("%CreditsButton/Button")
	var quitButton: Button = get_node("%QuitButton/Button")

	continueButton.get_parent().visible = FileAccess.file_exists(StoryUI.storySavePath)

	continueButton.pressed.connect(on_continue_pressed)
	startButton.pressed.connect(on_start_pressed)
	creditsButton.pressed.connect(on_credits_pressed)
	quitButton.pressed.connect(on_quit_pressed)

func on_continue_pressed() -> void:
	var initializer : StoryInitializer = LoadStory()
	initializer.initialize_from_load()
	self.queue_free()

func on_start_pressed() -> void:
	var initializer : StoryInitializer = LoadStory()
	initializer.initialize_as_new()
	self.queue_free()

func on_credits_pressed() -> void:
	# TODO
	pass

func on_quit_pressed() -> void:
	get_tree().quit()

func LoadStory() -> StoryInitializer:
	var initializer : StoryInitializer = ResourceLoader.load("res://Assets/Story.tscn").instantiate()
	get_parent().add_child(initializer)
	return initializer
