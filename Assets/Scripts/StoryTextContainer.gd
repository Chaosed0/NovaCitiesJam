class_name StoryTextContainer
extends Control

var _textScene : PackedScene
var _texts : Array[StoryText]
var _spacers : Array[Control]

func _ready() -> void:
	_textScene = ResourceLoader.load("res://Assets/UI/StoryText.tscn")

func set_story_text(storyText: String) -> void:
	var arr : PackedStringArray = storyText.split("\n", false)

	for storyLine: String in arr:
		var text : StoryText = _textScene.instantiate()
		add_child(text)
		text.text = str("\t", storyLine)
		_texts.append(text)

		var spacer : Control = Control.new()
		spacer.custom_minimum_size = Vector2(0, 5)
		add_child(spacer)
		_spacers.append(spacer)

func destroy_last_spacer() -> void:
	_spacers[_spacers.size() - 1].queue_free()
	_spacers.remove_at(_spacers.size() - 1)

func start_typeout(tween : Tween) -> void:
	for text in _texts:
		text.start_typeout(tween)

