class_name AudioManager
extends Node

static var instance: AudioManager

func _ready() -> void:
	instance = self

func play_stream(stream: AudioStream) -> void:
	var streamPlayer: AudioStreamPlayer = AudioStreamPlayer.new()
	streamPlayer.stream = stream
	streamPlayer.pitch_scale = 1.0 + randf() * 0.05 - 0.025
	add_child(streamPlayer)
	streamPlayer.play()
	await streamPlayer.finished
	streamPlayer.queue_free()
