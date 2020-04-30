extends Button

# REGRESA AL PERSONAJE AL PUNTO DE PARTIDA
func _on_button_up() ->void:
	Punteo.points=0
	Punteo.death=0
	get_tree().paused=false
	get_tree().reload_current_scene()
	
	
