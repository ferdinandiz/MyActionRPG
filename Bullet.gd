extends Area2D
var velocidade = 2000

func _ready():
	$CollisionShape2D.scale = Vector2(0.5,0.5)
	$Sprite.scale = Vector2(0.5,0.5)
	pass

func _physics_process(delta):
	position -= transform.y * velocidade *delta

func _on_Bullet_body_entered(body):
	
	body.queue_free()
	$".".queue_free()
	pass 


func _on_Timer_timeout():
	$".".queue_free()
	pass # Replace with function body.
