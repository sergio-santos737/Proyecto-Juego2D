extends Area2D

# METODO QUE DETECTA CUANDO EL PERSONAJE ESTÁ CALLENDO
var valor = 1
export(String, FILE, "*.tscn")var next  
var cont =1
func _physics_process(delta):
	var bodies  = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			Punteo.death += valor
			Punteo.points =0
			cont += valor
			get_tree().change_scene(next)
