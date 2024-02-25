extends Node2D

@export var speed = 1.25
@onready var globalRef = get_node("/root/Global")

func _physics_process(_delta):
	move()

func move():
	position.x -= speed*globalRef.speedMultiplier

func _on_collect_body_entered(_body):
	globalRef.currentRunScore += 1 * globalRef.scoreMultiplier
	self.queue_free()

func _on_enemy_1_body_entered(_body):
	globalRef.playerDead = true

func _on_timer_timeout():
	self.queue_free()
