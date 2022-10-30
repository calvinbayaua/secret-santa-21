extends Node

export var prev_scene = "res://Email/Email.tscn"

var opacity = 0

func _ready():
	$Sprite.modulate = Color(1,1,1,0)

## Controls color modulation of buttons
func _physics_process(delta):
	for x in $Control.get_children():
		if x.disabled == true:
			x.modulate = Color(1, 1, 1, 0.392157)
		else:
			x.modulate = Color(1,1,1,1)

## Exit button
func _on_Button2_pressed():
	get_tree().change_scene(prev_scene)
	queue_free()
	return


func _on_PlayButton_pressed():
	$Timer.start()
	if $AudioStreamPlayer.stream_paused == true:
		$AudioStreamPlayer.stream_paused = false
	else:
		$AudioStreamPlayer.playing = true
	$Control/PlayButton.disabled = true
	$Control/PauseButton.disabled = false
	$Control/ReplayButton.disabled = false

func _on_PauseButton_pressed():
	$AudioStreamPlayer.stream_paused = true
	$Control/PauseButton.disabled = true
	$Control/PlayButton.disabled = false

func _on_ReplayButton_pressed():
	$AudioStreamPlayer.playing = true

## Redirects to download attachments
func _on_DownloadButton_pressed():
	OS.shell_open("https://drive.google.com/drive/folders/1cNY2r1rYO7-COKEojLlYR7mpjvFxqvjO?usp=sharing")

## Change opacity on each timeout
func _on_Timer_timeout():
	if $Sprite.modulate.a == 1:
		$Timer.stop()
	elif opacity != 1.00:
		opacity += 0.01
		$Sprite.modulate = Color(1, 1, 1, opacity)
