extends Area2D
var bodies  = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":

			get_tree().change_scene(next)
