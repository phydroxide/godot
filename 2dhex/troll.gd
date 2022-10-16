extends KinematicBody2D

const MOTION_SPEED = 160 # Pixels/second.
const TAN30DEG = tan(deg2rad(30))

func _physics_process(_delta):
	var motion2 = Vector2()
	motion2.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	motion2.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	motion2.y *= TAN30DEG
	motion2 = motion2.normalized() * MOTION_SPEED
	#warning-ignore:return_value_discarded
	move_and_slide(motion2)
