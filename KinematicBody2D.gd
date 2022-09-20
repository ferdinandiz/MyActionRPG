extends KinematicBody2D
var velocidade = Vector2.ZERO

func _physics_process(delta):
	velocidade.x = Input.get_action_strength("direita") - Input.get_action_strength("esquerda")
	velocidade.y = Input.get_action_strength("baixo") - Input.get_action_strength("cima")
	move_and_slide(velocidade*100)
	trocaSprite(velocidade)

	pass

func trocaSprite(vel):
	if(vel.x == 1):
		$Sprite.rotation_degrees = 90
	if(vel.x == -1):
		$Sprite.rotation_degrees = 270
	if(vel.y == 1):
		$Sprite.rotation_degrees = 180
	if(vel.y == -1):
		$Sprite.rotation_degrees = 0
		
	if(vel.y == -1 and vel.x == -1):
		$Sprite.rotation_degrees = 270+45
	if(vel.y == -1 and vel.x == 1):
		$Sprite.rotation_degrees = 45
	if(vel.y == 1 and vel.x == 1):
		$Sprite.rotation_degrees = 180-45
	if(vel.y == 1 and vel.x == -1):
		$Sprite.rotation_degrees = 180+45
	pass


func _ready():
	pass

