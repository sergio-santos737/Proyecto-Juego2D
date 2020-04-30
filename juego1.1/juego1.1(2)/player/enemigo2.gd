extends Actores

# AGREGA UN ENEMIGO
func _ready() -> void:
	set_physics_process(false)
	velocidad.x = -acelerar.x

func _physics_process(delta: float) -> void:
	velocidad.y += gravedad*delta
	if is_on_wall():
		velocidad.x *= -1.0
	velocidad.y = move_and_slide(velocidad,FLOOR_NORMAL).y





