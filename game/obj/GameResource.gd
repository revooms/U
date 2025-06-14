extends Resource
class_name GameResource

@export var uuid: String = "***UNIQUEID***"
@export var title: String = "Untitled GameResource"
@export var description: String = "Describe this object here."


func _init() -> void:
	print("GameResource init: %s" % self.resource_scene_unique_id)
