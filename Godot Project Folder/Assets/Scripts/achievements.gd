extends Node2D

@onready var globalRef = get_node("/root/Global")

func _ready():
	$highScore2/info.text = str(globalRef.highScore)
	if globalRef.highScore >= 1000:
		$S50.frame = 76
		$S100.frame = 92
		$S500.frame = 108
		$S1k.frame = 124
	elif globalRef.highScore >= 500:
		$S50.frame = 76
		$S100.frame = 92
		$S500.frame = 108
		$S1k.frame = 123
	elif globalRef.highScore >= 100:
		$S50.frame = 76
		$S100.frame = 92
		$S500.frame = 107
		$S1k.frame = 123
	elif globalRef.highScore >= 50:
		$S50.frame = 76
		$S100.frame = 91
		$S500.frame = 107
		$S1k.frame = 123
	else:
		$S50.frame = 75
		$S100.frame = 91
		$S500.frame = 107
		$S1k.frame = 123

func _on_close_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
