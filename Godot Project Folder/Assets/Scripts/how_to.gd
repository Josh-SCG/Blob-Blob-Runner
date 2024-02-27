extends Node2D

@onready var isMobile = false

func _ready():
	isMobile = JavaScriptBridge.eval("/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)", true)
	if isMobile:
		$mobilePopUp.visible = true

func _on_close_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

