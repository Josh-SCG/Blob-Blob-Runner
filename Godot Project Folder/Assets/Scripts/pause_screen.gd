extends CanvasLayer

@onready var globalRef = get_node("/root/Global")

func _on_unpause_pressed():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	get_parent().speedChange()
	self.queue_free()

func _on_close_pressed():
	get_tree().paused = false
	globalRef.resetVar()
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
