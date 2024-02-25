extends Node2D

@onready var globalRef = get_node("/root/Global")
@onready var floorSpeed = 0.5
@onready var backgroundSpeed = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("speedDown") && $background.material.get_shader_parameter("speed") > 1.5 && $floor.material.get_shader_parameter("speed") > 0.5:
		$background.material.set_shader_parameter("speed",$background.material.get_shader_parameter("speed")-1.5)
		$floor.material.set_shader_parameter("speed",$floor.material.get_shader_parameter("speed")-0.5)
	
	if Input.is_action_just_pressed("speedUp") && $background.material.get_shader_parameter("speed") < 9 && $floor.material.get_shader_parameter("speed") < 3:
		$background.material.set_shader_parameter("speed",$background.material.get_shader_parameter("speed")+1.5)
		$floor.material.set_shader_parameter("speed",$floor.material.get_shader_parameter("speed")+0.5)
