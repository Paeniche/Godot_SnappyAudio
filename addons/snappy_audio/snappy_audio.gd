@tool
extends EditorPlugin


func _enter_tree():
	if not ProjectSettings.has_setting("autoload/Audio"):
		add_autoload_singleton("Audio","res://addons/snappy_audio/Audio.gd")


func _exit_tree() -> void:
	if ProjectSettings.has_setting("autoload/Audio"):
		remove_autoload_singleton("Audio")
