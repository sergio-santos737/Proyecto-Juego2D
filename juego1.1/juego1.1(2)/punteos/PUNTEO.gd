extends Node

# METODO QUE OBTIENE EL CONTADOR DE PUNTOS OBTENIDOS POR LAS MONEDAS
signal score_updated
signal player_died

var points = 0 setget set_score
var death = 0 setget set_deaths

func reset()->void:
	points=0
	death=0
 
func set_score(value: int)->void:
	points = value
	emit_signal("score_updated")

func set_deaths(value: int)->void:
	death = value
	emit_signal("player_died")
