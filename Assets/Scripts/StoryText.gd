class_name StoryText
extends RichTextLabel

const charactersPerSecond : float = 40

func _ready() -> void:
	visible_characters = 0

func start_typeout(tween : Tween) -> void:
	tween.chain().tween_method(_set_visible_characters, 0, text.length(), text.length() / charactersPerSecond)

func _set_visible_characters(count : int) -> void:
	visible_characters = count
