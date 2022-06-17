extends Node


# Declare member variables here.
var lis_body = []
onready var tail = preload("res://scene/body_snake/tail.tscn")
onready var body_spawner = preload("res://scene/body_snake/body_spawn.tscn")
onready var fruit_b = preload("res://scene/fruit/fruit_blue.tscn")
onready var fruit_r = load("res://scene/fruit/fruit_red.tscn")
var point_level = 0
var power = 1
var create_snake = false
var create = true
var eat = false
var body_y = 35
var move = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
