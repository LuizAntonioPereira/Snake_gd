extends Node2D


# Declare member variables here.
onready var level_node = $level
onready var position_snake = $snake_head
var new_x
var new_y 

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.eat == false:	
		body_snake()
		Global.eat = true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	level_node.text = str(Global.point_level)

	randomize()
	
	if Global.create == true:
		create_fruit()
		body_snake()
		Global.create = false
		
func create_fruit():
		
		var fruit = Global.fruit_r.instance()		
		new_x = rand_range(30,get_viewport().size.x - 30)
		new_y = rand_range(30,get_viewport().size.y - 30)
		fruit.global_position = Vector2(new_x, new_y)
		add_child(fruit)
		
func body_snake():
	
	if Global.create_snake == false and Global.eat == false:
		
		var body_start = Global.body_spawner.instance()		
		body_start.global_position = Vector2(position_snake.global_position.x,position_snake.global_position.y - Global.body_y)		
		add_child(body_start)
		
		var tail_start = Global.tail.instance()		
		tail_start.global_position = Vector2(body_start.global_position.x, body_start.global_position.y - Global.body_y)		
		add_child(tail_start)
		
	if Global.create_snake == true and Global.eat == true:
		
		var body_start = Global.body_spawner.instance()		
		body_start.global_position = Global.lis_body[0]
		add_child(body_start)
