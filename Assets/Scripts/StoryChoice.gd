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

func initialize(choiceText : String, index : int, displayIndex : int) -> void:
	_index = index
	_displayIndex = displayIndex
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
	_button.disabled = false
