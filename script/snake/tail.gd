extends Area2D


# Declare member variables here.


func _ready():
	pass # Replace with function body.


func _process(delta):
	
	if Global.lis_body.size() > 5:
		global_position = Vector2(Global.lis_body[6].x,Global.lis_body[6].y + Global.body_y)
	pass
