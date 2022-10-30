extends Control

var hours = 0
var minutes = 0
var seconds = 0

func _physics_process(delta):
	hours = OS.get_time()["hour"]
	minutes = OS.get_time()["minute"]
	seconds = OS.get_time()["second"]
	
	$Clock.text = String(hours) + ":" + String(minutes) + ":" + String(seconds)
