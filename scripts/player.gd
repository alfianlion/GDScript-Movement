extends CharacterBody2D

@export var speed = 3000

func get_input(delta):
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	#print(input_direction)
	input_direction.x += 1
	velocity = input_direction * speed * delta 

func _input(event):
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input(delta)
	move_and_slide()
