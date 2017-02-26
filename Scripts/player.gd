extends KinematicBody2D

func _fixed_process(delta):
	var speed = 3;
	var deadZone = 0.05
	
	if get_pos().x < 640:
		if get_pos().x < 600:
			var newPosX = Input.get_joy_axis(0, 0)
			var newPosY = Input.get_joy_axis(0, 1)
		
			if newPosX < deadZone and newPosX > -deadZone:
				newPosX = 0
			if newPosY < deadZone and newPosY > -deadZone:
				newPosY = 0
			
			move( Vector2(newPosX * speed , newPosY * speed) )
		else:
			set_pos(Vector2(get_pos().x - 1, get_pos().y))
	else:
		if get_pos().x > 680:
			var newPosX = Input.get_joy_axis(1, 0)
			var newPosY = Input.get_joy_axis(1, 1)
			
			if newPosX < deadZone and newPosX > -deadZone:
				newPosX = 0
			if newPosY < deadZone and newPosY > -deadZone:
				newPosY = 0
			
			move( Vector2(newPosX * speed , newPosY * speed) )
		else:
			set_pos(Vector2(get_pos().x + 1, get_pos().y))
func _ready():
	set_fixed_process(true)