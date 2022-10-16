extends KinematicBody2D

const MOTION_SPEED = 200 # Pixels/second.
const TAN30DEG = tan(deg2rad(30))

func _physics_process(_delta):
	var motion = Vector2()
	var rand = 1
	motion.x = rand
	motion.y = 0
	motion.y *= TAN30DEG
	motion = motion.normalized() * MOTION_SPEED
	#warning-ignore:return_value_discarded
	move_and_slide(motion)

