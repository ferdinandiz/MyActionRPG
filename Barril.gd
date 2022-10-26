extends KinematicBody2D



func _ready():
	pass 

func _on_Area2D_area_entered(area):
	area.queue_free()
	queue_free()
	
	pass # Replace with function body.
