extends KinematicBody2D
var velocidade = Vector2.ZERO
export (PackedScene) var Projetil

func _physics_process(delta):
	print($".".position)
	velocidade.x = Input.get_action_strength("direita") - Input.get_action_strength("esquerda")
	velocidade.y = Input.get_action_strength("baixo") - Input.get_action_strength("cima")
	
	if velocidade.x !=0 or velocidade.y !=0:
		if !$MoveTanque.playing:
			$MoveTanque.play()
	else:
		if $MoveTanque.playing:
			$MoveTanque.stop()
	
	move_and_slide(velocidade*500)
	trocaSprite(velocidade)
	if Input.is_action_just_pressed("shoot"):
		shoot()
	pass

func shoot():
	$Tiro.play()
	var canhaoA = Projetil.instance()
	var canhaoB = Projetil.instance()
	owner.add_child(canhaoA)
	owner.add_child(canhaoB)
	canhaoA.transform = $"Canhao 1".global_transform
	canhaoB.transform = $"Canhao 2".global_transform

func trocaSprite(vel):
	if(vel.x == 1):
		$".".rotation_degrees = 90
	if(vel.x == -1):
		$".".rotation_degrees = 270
	if(vel.y == 1):
		$".".rotation_degrees = 180
	if(vel.y == -1):
		$".".rotation_degrees = 0
		
	if(vel.y == -1 and vel.x == -1):
		$".".rotation_degrees = 270+45
	if(vel.y == -1 and vel.x == 1):
		$".".rotation_degrees = 45
	if(vel.y == 1 and vel.x == 1):
		$".".rotation_degrees = 180-45
	if(vel.y == 1 and vel.x == -1):
		$".".rotation_degrees = 180+45
	pass


func _ready():
	pass

