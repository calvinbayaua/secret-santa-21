extends Area2D

export var next_scene = "res://Email/Email.tscn"

func _on_Area2D_mouse_entered():
	$Sprite.modulate = Color(0.913725, 1, 0.015686)

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene(next_scene)
			queue_free()
			return

func _on_Area2D_mouse_exited():
	$Sprite.modulate = Color(1,1,1)
