class_name MainMenuButton
extends Control

var _button : Button
var _label : RichTextLabel

var _focused: bool

func _ready() -> void:
	_button = get_node("Button")
	_label = get_node("Label")

	_button.focus_entered.connect(on_focus)
	_button.mouse_entered.connect(on_focus)
	_button.button_down.connect(on_down)
	_button.pressed.connect(on_press)
	_button.focus_exited.connect(on_unfocus)
	_button.mouse_exited.connect(on_unfocus)

func on_focus() -> void:
	if _focused: return
	AudioManager.instance.play_stream(ResourceLoader.load("res://Assets/Audio/UI/choice_select.ogg"))
	_label.modulate = Color("ffd630")
	_focused = true

func on_unfocus() -> void:
	_focused = false
	_label.modulate = Color("ff7d00")

func on_down() -> void:
	_label.modulate = Color("ffe600")

func on_press() -> void:
	AudioManager.instance.play_stream(ResourceLoader.load("res://Assets/Audio/UI/choice_confirm.ogg"))
