extends CharacterBody2D

@export var speed := 460.0
@export var drag_factor := 10.0

func _physics_process(delta: float) -> void:
	var move_direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var desired_velocity := speed * move_direction
	var steering := desired_velocity - velocity
	velocity += steering * drag_factor * delta
	move_and_slide()
