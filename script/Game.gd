extends Node2D


# Declare member variables here.
onready var fruit_b = preload("res://scene/fruit_blue.tscn")
onready var fruit_r = load("res://scene/fruit_red.tscn")
onready var level_node = $level.text 
var new_x
var new_y 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	level_node = str(Global.point_level)
	randomize()
	if Global.create == true:
		create_fruit()
		Global.create = false
		
func create_fruit():
		
		var fruit = fruit_r.instance()		
		new_x = rand_range(10,900)
		new_y = rand_range(30,1000)
		fruit.global_position = Vector2(new_x, new_y)
		add_child(fruit)
		
