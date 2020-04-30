extends Control

# CUANDO EL JUGADOR PIERDE MUESTRA SUS RESULTADOS
onready var label: Label = get_node("Label")

func _ready() ->void:
	label.text = label.text % [Punteo.points, Punteo.death]
