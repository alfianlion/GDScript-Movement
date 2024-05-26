extends Node2D

var gameState = Tutorial.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func reset_level():
	return get_tree().reload_current_scene()

func _on_area_2d_body_entered(body):
	if body != null:
		gameState.setHealth(1)
		print(gameState.getHealth())
		%Label.text = "Health: " + str(gameState.getHealth())		
		if gameState.getHealth() <= 0:
			call_deferred("reset_level")
		print(body)
		
	pass # Replace with function body.
