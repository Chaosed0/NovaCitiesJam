class_name StoryInitializer
extends Node

const knot_path : String = "Main"

var _storyUI : StoryUI

func _ready() -> void:
	_storyUI = get_node("%StoryUI")
	_storyUI.on_story_loaded_signal.connect(on_story_loaded)

	print(ProjectSettings.get_setting("application/run/main_scene"), " ", ResourceLoader.get_resource_uid(self.scene_file_path))
	if get_parent() == get_tree().root && ProjectSettings.get_setting("application/run/main_scene") == ResourceUID.id_to_text(ResourceLoader.get_resource_uid(self.scene_file_path)):
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
