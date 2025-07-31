class_name StoryAudioPlayer
extends Node

var _current_player: AudioStreamPlayer
var _next_player: AudioStreamPlayer

var _tween: Tween

func _ready() -> void:
	_current_player = get_node("%AudioPlayer1")
	_next_player = get_node("%AudioPlayer2")

func play_ambience_for_background(background_name: String) -> void:
	if background_name == "barakhun_office_hallway" || background_name == "urun_indoor" || background_name == "courtyard" || background_name == "gymnasium_outdoor" || background_name == "police_station":
		background_name = "indoor"

	if background_name.begins_with("spaceport"):
		background_name = "spaceport"

	if background_name == "tmp-background":
		pass

	play_ambience(ResourceLoader.load("res://Assets/Audio/Ambience/%s.ogg" % background_name))

func play_ambience(stream: AudioStream) -> void:
	if _tween != null:
		_tween.kill()

	_next_player.stream = stream
	_next_player.volume_linear = 0
	_next_player.play(5)
	
	_tween = create_tween()
	_tween.parallel().tween_property(_current_player, "volume_linear", 0, 1)
	_tween.parallel().tween_property(_next_player, "volume_linear", 1, 1)
	_tween.chain().tween_callback(swap_players)

func swap_players() -> void:
	_current_player.stop()
	var player: AudioStreamPlayer = _current_player
	_current_player = _next_player
	_next_player = player
