extends Node2D
class_name Tutorial

var gameHealth = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func setHealth(point):
	gameHealth -= point
	return gameHealth
	
func getHealth():
	return gameHealth
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
