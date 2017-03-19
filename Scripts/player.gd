extends RigidBody2D

var dodgeballScene = load("res://Scenes/dodgeball.tscn")
var playerControllerID

func _integrate_forces(state):
	var newPosX = Input.get_joy_axis(playerControllerID, 0)
	var newPosY = Input.get_joy_axis(playerControllerID, 1)
	var deadZone = 0.1
	var speed = 5000
	
	add_force(Vector2( 0, 0 ), Vector2(-(get_applied_force().x), -(get_applied_force().y)))
	set_linear_velocity( Vector2(0, 0) )
	
	if newPosX < deadZone and newPosX > -deadZone:
		newPosX = 0
	if newPosY < deadZone and newPosY > -deadZone:
		newPosY = 0
	
	add_force(Vector2(0, 0), Vector2(newPosX * speed , newPosY * speed) )
	#if newPosY == 0 and newPosX == 0:
		#add_force(Vector2( 0, 0 ), Vector2(-(get_applied_force().x), -(get_applied_force().y)))
		#set_linear_velocity( Vector2(0, 0) )
	
func _fixed_process(delta):
	#var speed = 500;
	#var deadZone = 0.1
	
	#var newPosX = Input.get_joy_axis(0, 0)
	#var newPosY = Input.get_joy_axis(0, 1)
	
	#if newPosX < deadZone and newPosX > -deadZone:
		#newPosX = 0
	#if newPosY < deadZone and newPosY > -deadZone:
		#newPosY = 0
	pass
	#

func _ready():
	set_fixed_process(true)