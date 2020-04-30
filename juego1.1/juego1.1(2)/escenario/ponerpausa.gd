extends Control


onready var scen: = get_tree()
onready var pausd: ColorRect = get_node("menupausa")


var paused:= false setget set_paused

# AL PRESIONAR ENTER - SE PAUSA EL JUEGO
func _unhandled_input(event: InputEvent)-> void:
	if event.is_action_pressed("paused"):
		self.paused = not paused
		scen.set_input_as_handled()

func set_paused(value: bool) -> void:
	paused = value
	scen.paused = value
	pausd.visible= value
