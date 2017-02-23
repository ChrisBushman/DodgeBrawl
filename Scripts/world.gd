
extends Node2D
var score = 0 setget set_score
var PAD_SPEED = 150

func _ready():
    set_process(true)

func _process(delta):
	# Move Player 1
	var player1_pos = get_node("Player1").get_pos()

	if (Input.is_action_pressed("player1_move_up")):
		player1_pos.y += -PAD_SPEED * delta
	if (Input.is_action_pressed("player1_move_down")):
		player1_pos.y += PAD_SPEED * delta
	if (Input.is_action_pressed("player1_move_left")):
		player1_pos.x += -PAD_SPEED * delta
	if (Input.is_action_pressed("player1_move_right")):
		player1_pos.x += PAD_SPEED * delta
	
	get_node("Player1").set_pos(player1_pos)
	
	# Move Player 2
	var player2_pos = get_node("Player2").get_pos()

	if (Input.is_action_pressed("player2_move_up")):
		player2_pos.y += -PAD_SPEED * delta
	if (Input.is_action_pressed("player2_move_down")):
		player2_pos.y += PAD_SPEED * delta
	if (Input.is_action_pressed("player2_move_left")):
		player2_pos.x += -PAD_SPEED * delta
	if (Input.is_action_pressed("player2_move_right")):
		player2_pos.x += PAD_SPEED * delta
	
	get_node("Player2").set_pos(player2_pos)

func set_score(value):
	score = value
	get_node("Score").set_text("Score: "+str(score))

