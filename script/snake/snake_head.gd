extends KinematicBody2D


# Declare member variables here.
var velocity = 200
var dead = false
var eat = false

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.lis_body.append(global_position)

	pass

func _physics_process(delta):
	
	Global.lis_body.push_front(global_position)
	get_input()
	move_snake(delta)	

func get_input():
	
	if(Input.is_action_pressed("ui_up")):
		Global.move = Vector2(0,-1)
		$Sprite.flip_v = true
		rotation_degrees = 0
	elif(Input.is_action_pressed("ui_down")):
		Global.move = Vector2(0,1)
		$Sprite.flip_v = false
		rotation_degrees = 0
	elif(Input.is_action_pressed("ui_left")):
		Global.move = Vector2(-1,0)
		$Sprite.flip_v = false
		rotation_degrees = 90
	if(Input.is_action_pressed("ui_right")):
		Global.move = Vector2(1,0)
		$Sprite.flip_v = false
		rotation_degrees = -90
	
	
func move_snake(t):
	
	position += Global.move * t * velocity * Global.power
	

