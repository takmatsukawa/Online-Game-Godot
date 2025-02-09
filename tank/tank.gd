extends CharacterBody2D

const SPEED = 0.1
const MOVE_SPEED = 200
var rotation_velosity := 0.0

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		rotation_velosity = direction * SPEED
	else:
		rotation_velosity = move_toward(rotation_velosity, 0, SPEED)
	
	var direction_y := Input.get_axis("ui_up", "ui_down")
	if direction_y:
		velocity = Vector2.from_angle(rotation) * MOVE_SPEED * direction_y * -1
	else:
		velocity = lerp(velocity, Vector2.ZERO, delta * 10)
	
	$body.rotation += rotation_velosity
	
	$cannon.look_at(get_global_mouse_position())

	move_and_slide()
