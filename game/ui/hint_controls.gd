extends Control

@onready var label: Label = $Label

func _ready() -> void:
	var msg
	msg = "Controls Hints:"
	msg += "\nPlayer:"
	msg += "\n%s %s %s %s - Move" % ["TasteX", "TasteY", "TasteZ", "Taste0"]
	msg += "\n%s - Jump" % "TasteX"
	msg += "\n%s - Run" % "TasteX"
	
	label.text = msg
