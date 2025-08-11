extends Sprite2D

@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D

@export var color_desc : Color = Color.GRAY

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Respawn")
	collision_shape_2d.set_deferred("disabled", true)
	self_modulate = color_desc
	body.guardar_respawn()
