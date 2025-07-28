class_name StoryChoice
extends Control

const delay_time : float = 0.1
const fade_in_time : float = 0.25

var _button : Button
var _label : RichTextLabel

var _index : int
var _displayIndex : int

signal on_choice_chosen(index : int)

func _ready() -> void:
	_button = get_node("%Button")
	_label = get_node("%RichTextLabel")

	_button.pressed.connect(on_pressed)
	_button.focus_entered.connect(on_focus)
	_button.mouse_entered.connect(on_focus)
	_button.button_down.connect(on_down)
	_button.focus_exited.connect(on_unfocus)
	_button.mouse_exited.connect(on_unfocus)

func initialize(choiceText : String, index : int, displayIndex : int) -> void:
	_index = index
	_displayIndex = displayIndex

	_button.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_button.focus_mode = Control.FOCUS_NONE
	self.modulate.a = 0

	_label.text = str(" ", choiceText)
	_button.disabled = true

func initialize_tween(tween : Tween) -> void:
	tween.chain().tween_callback(self.start_fade_in)

func start_fade_in() -> void:
	var tween : Tween = self.create_tween()
	tween.tween_interval(delay_time * _displayIndex)
	tween.chain().tween_callback(self.set_enabled)
	tween.parallel().tween_property(self, "modulate:a", 1, fade_in_time)

func on_pressed() -> void:
	on_choice_chosen.emit(_index)

func set_enabled() -> void:
	_button.mouse_filter = Control.MOUSE_FILTER_STOP
	_button.focus_mode = Control.FOCUS_ALL
	_button.disabled = false

func on_focus() -> void:
	_label.modulate = Color("ffd630")

func on_unfocus() -> void:
	_label.modulate = Color("ff7d00")

func on_down() -> void:
	_label.modulate = Color("ffe600")