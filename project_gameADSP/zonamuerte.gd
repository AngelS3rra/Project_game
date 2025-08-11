extends Area2D

@onready var timer: Timer = $Timer

var player: Node2D

func _on_body_entered(body: Node2D) -> void:
	player = body
	print ("has perdido")
	timer.start()
	
	



func _on_timer_timeout() -> void:
	player.enviar_respawn_jugador()
