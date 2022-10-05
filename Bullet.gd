extends Area2D
var velocidade = 800

func _ready():
	$CollisionShape2D.scale = Vector2(0.5,0.5)
	$Sprite.scale = Vector2(0.5,0.5)
	pass

func _physics_process(delta):
	position -= transform.y * velocidade *delta

func _on_Bullet_body_entered(body):
	if(body.is_in_group("alvo")):
		body.queue_free()
		pass 
