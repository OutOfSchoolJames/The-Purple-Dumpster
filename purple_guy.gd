extends RigidBody2D

var speed = 10 # ASSIGN
var jumpspeed=80

var example = [1,2,"three"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	
	
	if Input.is_key_pressed(KEY_S):
		linear_velocity.y += speed
	if Input.is_key_pressed(KEY_D) :
		linear_velocity.x += speed
	if Input.is_key_pressed(KEY_A):
		linear_velocity.x -= speed
		
	
	var overlap : Array = $Area2D.get_overlapping_bodies()
	overlap.erase(self)
	if not overlap == []:
		if Input.is_key_pressed(KEY_W)  :
			linear_velocity.y = linear_velocity.y - jumpspeed
