extends CanvasLayer

@onready var moneda_contador: Label = $monedaContador


func _ready() -> void:
	visible = true
	var game_manager = get_node("%GameManager")
	game_manager.puntuacion_actualizada.connect(_on_puntuacion_actualizada)

func _on_puntuacion_actualizada(puntuacion_actual: int) -> void:
	moneda_contador.text = str(puntuacion_actual)
