extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func fruit_blue_entered(body):
	if body.is_in_group("head"):
		$Timer.start()
		queue_free()
	pass # Replace with function body.


func timer():
	Global.power = 2
	pass # Replace with function body.
