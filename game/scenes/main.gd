extends Node3D

func _ready() -> void:
	print("Main ready")


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("game_pause"):
		Game.Pause()
