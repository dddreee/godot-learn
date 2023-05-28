extends Sprite2D

var speed = 400
var angular_speed = PI

# Called when the node enters the scene tree for the first time.

func _init():
	print("Hello World")
	print(rotation)
	
func _ready():
	var timer = get_node("Timer")
	timer.connect("timeout", Callable(self, "_on_timer_timeout"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#var direction = 0
	#if Input.is_action_pressed("ui_left"):
		#direction = -1
	#if Input.is_action_pressed("ui_right"):
		#direction = 1
	#rotation += angular_speed * direction * delta
	# 默认不动 cannot type chinese ?
	#var velocity = Vector2.ZERO
	#if Input.is_action_pressed("ui_up"):
	#	velocity = Vector2.UP.rotated(rotation) * speed
	#if Input.is_action_pressed("ui_down"):
	#	velocity = Vector2.DOWN.rotated(rotation) * speed
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta

func _on_button_pressed():
	set_process(not is_processing())


func _on_timer_timeout():
	visible = not visible
