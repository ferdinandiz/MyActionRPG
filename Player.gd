extends Node2D

export var esta_tocando = true

func _physics_process(delta):
	if Input.is_action_pressed("musica"):
		esta_tocando = not esta_tocando  
	if esta_tocando:
		if !$LinkinPark.playing:
			$LinkinPark.play()
	else:
		if $LinkinPark.playing:
			$LinkinPark.stop()
