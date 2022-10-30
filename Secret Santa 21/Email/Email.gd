extends Control

export var prev_scene = "res://Desktop/Desktop.tscn"
export var next_scene = "res://Attachments/Attachments.tscn"
var entered = false
var index = 0

func _ready():
	$Details/Label6.percent_visible = 0
	$Details/Label7.percent_visible = 0
	$Details/Label8.percent_visible = 0
	$AnimationPlayer.play("From")
	$ScrollContainer/VBoxContainer/TextureButton/Panel.modulate = Color(1,1,1,0)

## Make border appear when hovering texture button
#func _physics_process(delta):
#	if entered == true:
#		$ScrollContainer/VBoxContainer/TextureButton/Panel.modulate = Color(1,1,1,1)
	#else:
	#	$ScrollContainer/VBoxContainer/TextureButton/Panel.modulate = Color(1,1,1,0)

func _on_Button_pressed():
	get_tree().change_scene(prev_scene)
	queue_free()
	return

func _on_TextureButton_pressed():
	get_tree().change_scene(next_scene)
	queue_free()
	return

func _on_TextureButton_mouse_entered():
	$ScrollContainer/VBoxContainer/TextureButton/Panel.modulate = Color(1,1,1,1)

func _on_TextureButton_mouse_exited():
	$ScrollContainer/VBoxContainer/TextureButton/Panel.modulate = Color(1,1,1,0)
