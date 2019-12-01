extends KinematicBody2D

export (int) var posX = 0
export (int) var posY = 0
export (int) var att = 1 #attribute of a tower; tyep of attack/bullet
var fps = 0 #frames per second

func _process(delta):
	fps += 1
	var parent = get_parent()
	#print(parent.posX)
	if (parent.posX == posX) and (parent.posY == posY): #if the player is in the position of a built tower, then remove option is available
		if Input.is_action_just_pressed("remove"):
			queue_free()
	
	if(fps%500 == 0): 
		var bull_texture
		if (att == 1):
			$AnimatedSprite.animation = "tower1"
			bull_texture = preload("res://bullet.tscn")
		elif (att == 2):
			fps -= 200
			$AnimatedSprite.animation = "tower2"
			bull_texture = preload("res://fasterbullet.tscn")
		elif (att == 3):
			$AnimatedSprite.animation = "tower3"
			bull_texture = preload("res://lazer.tscn")
		elif (att == 0):
			bull_texture = preload("res://lazer.tscn")
		var bull = bull_texture.instance()
		bull.position = position
		parent.add_child(bull)