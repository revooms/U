extends Control

func _ready() -> void:
	_on_pause_change(get_tree().paused)
	Game.pause_changed.connect(_on_pause_change)
	
func _on_pause_change(pause_state: bool):
	if pause_state == true:
		# Game is paused
		self.show()
	else:
		# Game is not paused
		self.hide()


func _on_exit_button_pressed() -> void:
	Game.ExitGame()


func _on_resume_button_pressed() -> void:
	Game.Unpause()
	pass # Replace with function body.
