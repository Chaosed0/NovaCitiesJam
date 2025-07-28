class_name MainMenuButton
extends Control

var _button : Button
var _label : RichTextLabel

func _ready() -> void:
	_button = get_node("Button")
	_label = get_node("Label")

	_button.focus_entered.connect(on_focus)
	_button.mouse_entered.connect(on_focus)
	_button.button_down.connect(on_down)
	_button.focus_exited.connect(on_unfocus)
	_button.mouse_exited.connect(on_unfocus)

func on_focus() -> void:
	_label.modulate = Color("ffd630")

func on_unfocus() -> void:
	_label.modulate = Color("ff7d00")

func on_down() -> void:
	_label.modulate = Color("ffe600")