extends Node3D
class_name Entity

var health: float = 100

func damage(amount: float) -> void:
	health -= amount
	print("Damaged Entity: ", self.name, ". Lost ", amount, " HP")
	if health <= 0:
		queue_free()
