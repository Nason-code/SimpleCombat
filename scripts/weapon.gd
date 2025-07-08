extends Node3D
class_name Weapon

var direction: Vector3

func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.get_parent() is not Entity: return
	area.get_parent().damage(50)
	
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		direction.z += -1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x += -1
		
	global_position = direction * 5 * delta
