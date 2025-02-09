extends Node2D

var speed := 6.0
var lifetime := 3.0

func _physics_process(delta: float) -> void:
	position += Vector2.from_angle(rotation) * speed
	lifetime -= delta
	if lifetime <= 0.0:
		queue_free()
