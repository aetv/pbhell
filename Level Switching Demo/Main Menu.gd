extends Node2D
var test = 500

func _process(delta):
	if (test == 0):
		get_tree().change_scene("res://Level 1.tscn")
	test -= 1
	pass

	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://Level 2.tscn")
		pass # Replace with function body.
