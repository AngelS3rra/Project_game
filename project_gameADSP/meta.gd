extends Sprite2D

@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D

@export_file("*.tscn") var escena_cargar: String

func _ready() -> void:
	pass 



func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	print ("llegaste a la meta")
	
	collision_shape_2d.set_deferred("disabled", true)
	
	if escena_cargar:
		pass
		get_tree().change_scene_to_file("res://nivel_2.0.tscn")
