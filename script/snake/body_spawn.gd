extends Area2D


# Declare member variables here
# var a = 2
# var b = "text"



func _ready():
	pass



func _process(delta):
	
	if Global.lis_body.size() > 2:
		global_position = Vector2(Global.lis_body[2].x,Global.lis_body[2].y + Global.body_y)
		
		Global.lis_body.append(global_position)
	pass
