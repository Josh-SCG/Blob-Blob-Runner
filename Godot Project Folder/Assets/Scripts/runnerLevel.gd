extends Node2D

@onready var globalRef = get_node("/root/Global")
@onready var floorSpeed = 0.5
@onready var backgroundSpeed = 2
@onready var isMobile = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$scoreNode/scoreLabel.text = "Score: " + str(globalRef.currentRunScore)
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	globalRef.shaderFloor = $floor.material.get_shader_parameter("speed")
	globalRef.shaderBackground = $background.material.get_shader_parameter("speed")
	isMobile = JavaScriptBridge.eval("/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)", true)
	if isMobile:
		$mobileControls.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$scoreNode/scoreLabel.text = "Score: " + str(globalRef.currentRunScore)
	
	if Input.is_action_just_pressed("speedDown") && $background.material.get_shader_parameter("speed") > 1.5 && $floor.material.get_shader_parameter("speed") > 0.5:
		$background.material.set_shader_parameter("speed",$background.material.get_shader_parameter("speed")-1.5)
		$floor.material.set_shader_parameter("speed",$floor.material.get_shader_parameter("speed")-0.5)
		globalRef.scoreMultiplier /= 2
		globalRef.speedMultiplier -= 0.5
		$spawner/Timer.wait_time += 0.6
		$player.skew -= 0.1
	
	if Input.is_action_just_pressed("speedUp") && $background.material.get_shader_parameter("speed") < 7.5 && $floor.material.get_shader_parameter("speed") < 2.5:
		$background.material.set_shader_parameter("speed",$background.material.get_shader_parameter("speed")+1.5)
		$floor.material.set_shader_parameter("speed",$floor.material.get_shader_parameter("speed")+0.5)
		globalRef.scoreMultiplier *= 2
		globalRef.speedMultiplier += 0.5
		$spawner/Timer.wait_time -= 0.6
		$player.skew += 0.1

func paused():
	if Input.is_action_just_pressed("Pause"):
		floorSpeed = $floor.material.get_shader_parameter("speed")
		backgroundSpeed = $background.material.get_shader_parameter("speed")
		
func changeSpeed1():
	$background.material.set_shader_parameter("speed",globalRef.shaderBackground)
	$floor.material.set_shader_parameter("speed",globalRef.shaderFloor)
	
func changeSpeed2():
	$background.material.set_shader_parameter("speed",backgroundSpeed)
	$floor.material.set_shader_parameter("speed",floorSpeed)
