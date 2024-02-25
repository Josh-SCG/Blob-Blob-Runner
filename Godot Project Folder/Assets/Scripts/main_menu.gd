extends Node2D

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/the_game.tscn")


func _on_how_to_pressed():
	get_tree().change_scene_to_file("res://Scenes/how_to.tscn")


func _on_achievements_pressed():
	get_tree().change_scene_to_file("res://Scenes/achievements.tscn")
