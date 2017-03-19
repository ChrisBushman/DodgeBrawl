extends Node2D
var score = 0 setget set_score
var PAD_SPEED = 150

func _ready():
	get_node("Player1").playerControllerID = 0
	get_node("Player2").playerControllerID = 1

func set_score(value):
	score = value
	get_node("Score").set_text("Score: "+str(score))

