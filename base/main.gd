extends Node

var tank_pr = preload("res://tank/tank.tscn")

func _ready() -> void:
	var tank = tank_pr.instantiate()
	$players.add_child(tank)
