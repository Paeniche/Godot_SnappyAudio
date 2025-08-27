# ![Icon](https://raw.githubusercontent.com/BtheDestroyer/Godot_QuickAudio/1.0/addons/quick_audio/icon.svg) Godot_QuickAudio

A fork of Godot_QuickAudio to add features that Paeniche thought would be useful

## [Overview Video](https://www.youtube.com/watch?v=OEpfdmW6_s0)


## Installation

### From Asset Library

Not yet available for this repo

### Manual Download

Not yet available for this repo

## How to Use

See the full demo scripts for [sound effects](https://github.com/BtheDestroyer/Godot_QuickAudio/blob/master/addons/quick_audio/SFXDemo.gd) and [music](https://github.com/BtheDestroyer/Godot_QuickAudio/blob/master/addons/quick_audio/MusicDemo.gd).

### Quick start:

```gdscript
extends Node3D

@export var music: AudioStream
@export var sound: AudioStream

func _ready():
  Audio.play_sound(music)

var time := 0.0
func _process(delta):
  time += delta
  if time > 1.0:
    time -= 1.0
    Audio.play_sound_3d(sound).global_position = global_position
```
