@tool
extends EditorPlugin


func _enter_tree():
	if not ProjectSettings.has_setting("autoload/Audio"):
		add_autoload_singleton("Audio", "res://addons/snappy_audio/Audio.gd")
