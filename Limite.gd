extends Node2D

func _ready():
	pass 

func _on_LimiteEsquerda_body_entered(body):
	
	body.position.x = $LimiteDireita/direita.position.x-110
	pass # Replace with function body.


func _on_LimiteDireita_body_entered(body):
	body.position.x = 70
	pass # Replace with function body.


func _on_LimiteCima_body_entered(body):
	body.position.y = $LimiteBaixo/baixo.position.y-110
	pass # Replace with function body.


func _on_LimiteBaixo_body_entered(body):
	body.position.y = 70
	pass # Replace with function body.


func _on_LimiteEsquerda_area_entered(area):
	area.position.x = $LimiteDireita/direita.position.x-110
	pass # Replace with function body.
