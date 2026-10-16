extends RigidBody2D

var speed = 10
var jumpspeed=40

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	
	
	if Input.is_key_pressed(KEY_DOWN):
		linear_velocity.y += speed
	if Input.is_key_pressed(KEY_RIGHT) :
		linear_velocity.x += speed
	if Input.is_key_pressed(KEY_LEFT):
		linear_velocity.x -= speed
		
	
	if $Area2D.has_overlapping_bodies() :
		if Input.is_key_pressed(KEY_UP) :
			linear_velocity.y = linear_velocity.y - jumpspeed
