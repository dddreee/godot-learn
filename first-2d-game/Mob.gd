extends RigidBody2D

# 在 RigidBody2D 属性中，将 Gravity Scale 设置为 0，这样怪物就不会下坠。此外，在 CollisionObject2D 部分下，点击 Mask 属性并去除第一个复选框的勾选。这会确保怪物就不会彼此碰撞。


# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(mob_types[randi() % mob_types.size()])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	pass # Replace with function body.
