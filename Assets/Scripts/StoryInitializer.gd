class_name StoryInitializer
extends Control

const knot_path : String = "Main"

var _storyUI : StoryUI

func _ready() -> void:
	_storyUI = get_node("%StoryUI")
	_storyUI.on_story_loaded_signal.connect(on_story_loaded)

	if get_tree().current_scene == self:
		print("starting from story scene")
		initialize_as_new()

func initialize_as_new() -> void:
	if !_storyUI.storyIsLoaded:
		await _storyUI.on_story_loaded_signal

	_storyUI.start_story(knot_path)

func initialize_from_load() -> void:
	if !_storyUI.storyIsLoaded:
		await _storyUI.on_story_loaded_signal

	_storyUI.load_story()

func on_story_loaded() -> void:
	_storyUI._story.bind_external_function("quit_game", self, "quit")
	_storyUI._story.bind_external_function("finish", self, "finish")

func quit() -> void:
	get_tree().quit()

func finish() -> void:
	DirAccess.remove_absolute(StoryUI.storySavePath)
	Game.instance.load_scene(ResourceLoader.load("res://Assets/MainMenu.tscn"))
