extends Area2D

# AGREGA UNA MONEDA DE VALOR 100
var valor = 100
func _on_coin_body_entered(body):
	Punteo.points += valor
	queue_free()
