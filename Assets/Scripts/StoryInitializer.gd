class_name StoryInitializer
extends Control

const knot_path : String = "Main"

var _storyUI : StoryUI

func _ready() -> void:
	_storyUI = get_node("%StoryUI")
	_storyUI.on_story_loaded_signal.connect(on_story_loaded)
	_storyUI.on_story_complete.connect(on_story_complete)

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

func quit() -> void:
	get_tree().quit()

func on_story_complete() -> void:
	DirAccess.remove_absolute(StoryUI.storySavePath)
	await Game.instance.load_scene(ResourceLoader.load("res://Assets/MainMenu.tscn"))
