extends Node

#======================
# Scoring variables
#======================
func resetVar():
	if highScore < currentRunScore:
		highScore = currentRunScore
	currentRunScore = 0
	scoreMultiplier = 1
	speedMultiplier = 1
	playerDead = false

var currentRunScore = 0
var highScore = 0

var scoreMultiplier = 1
var speedMultiplier = 1
var playerDead = false
#======================
# Achievement Variables
#======================
var completeFirstRun = 0
var score10 = 0
var score50 = 0
var score100 = 0

#======================
# Misc Variables
#======================

var shaderBackground = 0
var shaderFloor = 0
