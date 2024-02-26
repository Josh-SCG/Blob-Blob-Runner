extends AudioStreamPlayer

func play_run_song():
	self.stream = preload("res://Assets/Art/Music/Born_to_Blob.ogg")
	self.play()
	
func play_menu_song():
	self.stream = preload("res://Assets/Art/Music/slow_jam.ogg")
	self.play()
