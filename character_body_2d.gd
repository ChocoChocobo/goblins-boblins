extends CharacterBody2D

@export var speed = 250.0
@export var jumpForce = -400.0
@export var gravity = 600

func _physics_process(delta: float):
	if !is_on_floor():
		velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jumpForce
	
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	move_and_slide()
