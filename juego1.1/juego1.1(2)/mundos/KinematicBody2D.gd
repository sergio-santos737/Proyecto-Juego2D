extends KinematicBody2D

# METODO QUE MUESTRA LAS ACCIONES DEL PERSONAJE
var movimiento=Vector2()
const gravedad = 15
const salto = Vector2(0,-1)
const aceleracion = 10
export (int) var velocidad
export (int) var h_salto


func _physics_process(delta):
	movimiento.y += gravedad
	var friccion = false
	
	if Input.is_action_pressed("ui_right"):
		movimiento.x = min(movimiento.x+aceleracion,velocidad)
		$Sprite.flip_h=false
		$Sprite.play("correr")
	elif Input.is_action_pressed("ui_left"):
		movimiento.x = max(movimiento.x-aceleracion,-velocidad)
		$Sprite.flip_h=true
		$Sprite.play("correr")
	else:
		movimiento.x= lerp(movimiento.x, 0, 0.2)
		$Sprite.play("quieto")
		friccion=true
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			movimiento.y = -h_salto
		if friccion== true:
			movimiento.x= lerp(movimiento.x, 0, 0.2)
	else: 
		if movimiento.y <0:
			$Sprite.play("saltar")
		else:
			$Sprite.play("caer")
		if friccion== true:
			movimiento.x= lerp(movimiento.x, 0, 0.5)
	
	movimiento = move_and_slide(movimiento,salto)
	pass


