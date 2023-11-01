extends Node2D

var leftPoints: int = 0
var rightPoints: int = 0

const maxPoints: int = 11

func _ready():
	resetPoints()

func resetPoints():
	leftPoints = 0
	rightPoints = 0
	$LeftLabel.text = "0"
	$RightLabl.text = "0"

func handleRightpointUp():
	rightPoints += 1
	$RightLabl.text = str(rightPoints)
	newBall(true)

func handleLeftpointUp():
	leftPoints += 1
	$LeftLabel.text = str(leftPoints)
	newBall(false)

func newBall(rightPointed: bool):
	$Ball.reset(rightPointed)
	$Camera2D.shake(rightPointed)

func _on_right_wall_left_point_up():
	handleLeftpointUp()

func _on_left_wall_right_point_up():
	handleRightpointUp()
