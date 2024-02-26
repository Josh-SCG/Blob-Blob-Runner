extends Node2D

@onready var musicRef = get_node("/root/Music")


func _on_start_pressed():
	musicRef.play_run_song()
	get_tree().change_scene_to_file("res://Scenes/the_game.tscn")

func _on_how_to_pressed():
	get_tree().change_scene_to_file("res://Scenes/how_to.tscn")

func _on_achievements_pressed():
	get_tree().change_scene_to_file("res://Scenes/achievements.tscn")
