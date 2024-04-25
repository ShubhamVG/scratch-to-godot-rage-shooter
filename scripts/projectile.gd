extends CharacterBody2D


const SPEED = 1000.0
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity = Vector2.ZERO
		
	var direction := Input.get_axis("ui_left", "ui_right")
	rotation += direction * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.x = SPEED * sin(rotation)
		velocity.y = -SPEED * cos(rotation)

	move_and_slide()
