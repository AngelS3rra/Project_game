extends Node


var posicion_respawn: Vector2

func _ready() -> void:
	var player = get_parent()
	guardar_punto_control()
	player.respawn_jugador.connect(_hacer_respawn)
	player._grd_respawn.connect(guardar_punto_control)

func _hacer_respawn() -> void:
	var player = get_parent()
	
	get_parent().position = posicion_respawn

func guardar_punto_control() -> void:
	posicion_respawn = get_parent().position
