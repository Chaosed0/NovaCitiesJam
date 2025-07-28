class_name StoryInputChoice
extends LineEdit

const delay_time : float = 0.1
const fade_in_time : float = 0.25

var _index : int
var _varName : String
var _displayIndex : int

signal on_input(varName: String, value: String, index: int)

func initialize(varName: String, choiceText: String, index: int, displayIndex: int) -> void:
	_varName = varName
	_index = index
	_displayIndex = displayIndex

	mouse_filter = Control.MOUSE_FILTER_IGNORE
	focus_mode = Control.FOCUS_NONE
	self.modulate.a = 0

	placeholder_text = choiceText
	text = ""

	editable = false
	text_submitted.connect(on_text_submitted)

func initialize_tween(tween : Tween) -> void:
	tween.chain().tween_callback(self.start_fade_in)

func start_fade_in() -> void:
	var tween : Tween = self.create_tween()
	tween.tween_interval(delay_time * _displayIndex)
	tween.chain().tween_callback(self.set_enabled)
	tween.parallel().tween_property(self, "modulate:a", 1, fade_in_time)

func on_text_submitted(submitted: String) -> void:
	on_input.emit(_varName, submitted, _index)

func set_enabled() -> void:
	mouse_filter = Control.MOUSE_FILTER_STOP
	focus_mode = Control.FOCUS_ALL
	editable = true
