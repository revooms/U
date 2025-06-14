extends GameResource
class_name ShipEngine

@export var weight: int = 500
@export var volume: int = 25
@export var hp: int = 500
@export var energy_consumption: int = 5
@export var price: float = 5200.99

func _init() -> void:
	print("--ShipEngine init: %s" % self.resource_scene_unique_id)
