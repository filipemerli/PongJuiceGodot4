extends Camera2D

var displacement: float = 0.0
var velocity: float = 0.0
const spring: float = 900.0
const damp: float = 18.0
const multiplier: float = 20.0
var rightPoint: bool = false

func shake(toLeft):
	rightPoint = toLeft
	velocity = -50.0

func _physics_process(delta):
	var force = -spring * displacement - damp * velocity
	velocity += force * delta
	displacement += velocity * delta
	if rightPoint:
		self.position.x = -displacement * multiplier
	else:
		self.position.x = displacement * multiplier
