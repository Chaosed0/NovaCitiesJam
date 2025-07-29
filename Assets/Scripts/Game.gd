class_name Game
extends Control

static var instance : Game

var _current_scene : Control

func _ready() -> void:
	instance = self
	load_scene(ResourceLoader.load("res://Assets/MainMenu.tscn"), Callable(), false)

func _exit_tree() -> void:
	instance = null

func load_scene(scene: PackedScene, just_after_loaded: Callable = Callable(), animate: bool = true) -> Control:
	if _current_scene != null:
		if _current_scene.has_method("_before_disabled"):
			_current_scene._before_disabled()

		if animate:
			var tween: Tween = create_tween()
			tween.tween_property(_current_scene, "modulate:a", 0, 0.5)
			await tween.finished

		remove_child(_current_scene)
		_current_scene = null

	if scene != null:
		_current_scene = scene.instantiate()
		add_child(_current_scene)

		if _current_scene.has_method("_before_enabled"):
			_current_scene._before_enabled()

		if just_after_loaded.is_valid():
			just_after_loaded.call(_current_scene)

		if animate:
			_current_scene.modulate.a = 0
			var tween : Tween = create_tween()
			tween.tween_property(_current_scene, "modulate:a", 1, 0.5)
			await tween.finished

	return _current_scene
