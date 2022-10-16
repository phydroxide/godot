extends KinematicBody2D

const MOTION_SPEED = 200 # Pixels/second.
const TAN30DEG = tan(deg2rad(30))

func _physics_process(_delta):
	var motion = Vector2()
	motion.x = Input.get_action_strength("graf_right") - Input.get_action_strength("graf_left")
	motion.y = Input.get_action_strength("graf_down") - Input.get_action_strength("graf_up")
	motion.y *= TAN30DEG
	motion = motion.normalized() * MOTION_SPEED
	#warning-ignore:return_value_discarded
	move_and_slide(motion)
