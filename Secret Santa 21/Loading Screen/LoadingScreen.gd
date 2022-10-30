extends Control

export var next_scene = "res://Desktop/Desktop.tscn"

func _ready():
	pass

func load_scene(scene_path):
	next_scene = scene_path

func _on_Timer_timeout():
	$ProgressBar.value += 1
	
	if ($ProgressBar.value == $ProgressBar.max_value):
		get_tree().change_scene(next_scene)
		$Timer.stop()
		queue_free()
