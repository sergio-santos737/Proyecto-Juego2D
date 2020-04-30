extends Button

# PERMITE SEGUIR CON EL JUEGO AL HACER CLICK
var next_scene:="res://mundos/mundo.tscn"
func _on_inicio_button_up():
	get_tree().change_scene(next_scene)
