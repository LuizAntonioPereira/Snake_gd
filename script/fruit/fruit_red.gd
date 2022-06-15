extends Area2D


# Declare member variables here.



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func fruit_entered(body):
	if body.is_in_group("head"):
		Global.point_level += 1
		queue_free()
		if Global.create == false:
			Global.create = true
	pass # Replace with function body.
