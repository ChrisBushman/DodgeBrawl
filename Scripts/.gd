extends KinematicBody2D

func _fixed_process(delta):
	var speed = 3;
	if !(get_pos().x < 680 && get_pos().x > 600):
		move( Vector2(Input.get_joy_axis(0, 0) * speed , Input.get_joy_axis(0, 1) * speed) )
	else:
		if get_pos().x > 640:
			set_pos(Vector2(get_pos().x + 1, get_pos().y))
		else:
			set_pos(Vector2(get_pos().x - 1, get_pos().y))
	
func _ready():
	set_fixed_process(true)