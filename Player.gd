extends CharacterBody3D

const SENSITIVITY = 0.005

@onready var head = $Head
@onready var camera: Camera3D = $Head/Camera3D

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		head.rotate_y(-event.relative.x * SENSITIVITY)
		camera.rotate_x(clamp(camera.rotation.x, deg_to_rad(-40), deg_to_rad(60)))
