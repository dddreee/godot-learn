extends Sprite2D
signal test_signal(value)
var health = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	health -= 1
	emit_signal("test_signal", health)

