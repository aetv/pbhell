extends Button

# Declare member variables here. Examples:
var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_tree().change_scene("Level_1.tscn")
	pass


func _on_Button_pressed(scene_to_load):
	
	pass # Replace with function body.
