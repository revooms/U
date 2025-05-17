extends Node

signal pause_changed(ispaused: bool)

@export var title: String = "Untitled Game"
@export var is_paused: bool = false


func _ready() -> void:
	print("Game ready")
	

func TogglePause():
	is_paused = not is_paused
	pause_changed.emit(is_paused)


func Pause() -> void:
	print("Pausing game")
	is_paused = true
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	pause_changed.emit(is_paused)
	

func Unpause()->void:
	print("Unpausing game")
	is_paused = false
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	pause_changed.emit(is_paused)


func ExitGame() -> void:
	print("Exiting game")
	get_tree().quit(0)
