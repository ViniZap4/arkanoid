extends KinematicBody2D

var veloc = 500
var dirX = 0

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		dirX = -1
	elif Input.is_action_pressed("ui_right"):
		dirX = 1
	else:
		dirX =0
			 
	move_and_collide(Vector2(veloc,0)*dirX*delta)
