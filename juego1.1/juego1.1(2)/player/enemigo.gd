extends Actores

func _on_Dectectar_body_entered(body: PhysicsBody2D)-> void:
	queue_free()


func _physics_process(delta: float) -> void:
	var direccion: = get_direccion()
	velocidad = velocidad_movimiento(velocidad,direccion, acelerar)
	velocidad = move_and_slide(velocidad,FLOOR_NORMAL)
	
func get_direccion() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right")-Input.get_action_strength("move_left"),-1.0
		if Input.is_action_just_pressed("jump")and is_on_floor() else 0.0
	)

func velocidad_movimiento(linear_velocidad: Vector2, 
		direccion: Vector2, 
		acelerar: Vector2
	) -> Vector2:
	var n_velocidad := linear_velocidad
	n_velocidad.x = acelerar.x * direccion.x
	n_velocidad.y += gravedad * get_physics_process_delta_time()
	if direccion.y == -1.0:
		n_velocidad.y = acelerar.y * direccion.y
	return n_velocidad

func velocidad_stomp_movimiento(l_velocidad: Vector2, impulse: float)-> Vector2:
	var salida:= l_velocidad
	salida.y = -impulse
	return salida
	


