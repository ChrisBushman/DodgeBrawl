extends KinematicBody2D

func _fixed_process(delta):
	var speed = 3;
	move( Vector2(Input.get_joy_axis(0, 0) * speed , Input.get_joy_axis(0, 1) * speed) )
	
func _ready():
	set_fixed_process(true)