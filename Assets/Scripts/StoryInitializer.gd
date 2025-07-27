class_name StoryInitializer
extends Node

const knot_path : String = "Main"

var _storyUI : StoryUI

func _ready() -> void:
	_storyUI = get_node("%StoryUI")
	_storyUI.load_story(knot_path)

	_storyUI.on_story_loaded_signal.connect(on_story_loaded)

func on_story_loaded() -> void:
	_storyUI._story.bind_external_function("quit_game", self, "quit")

func quit() -> void:
	get_tree().quit()