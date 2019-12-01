extends Control

onready var e_bar = $Bars/Energy_Bar/TextureProgress # bar's number makes bar progress


onready var l_bar = $Bars/Life_Bar/TextureProgress


onready var tween = $Tween # animate's bar's progression

# timer prototype
var time_start = 0
var time_now = 0

var A_filams_max_value = 100
var A_filams_min_value = 0
var A_filams = 10


var B_filams_max_value = 100
var B_filams_min_value = 0
var B_filams = 10


func _ready():
	# timer prototype
	time_start = OS.get_unix_time()
	set_process(true)
	pass

func _process(delta):
	# stopwatch
	time_now = OS.get_unix_time()
	var elapsed = time_now - time_start
	var minutes = elapsed / 60
	var seconds = elapsed % 60
	var milliseconds = elapsed * 2
	var str_elapsed = "%02d:%02d:%02d" % [minutes, seconds, milliseconds]
	print("Timer: ", str_elapsed)
	
	#life bar start
	l_bar.min_value = B_filams_min_value
	l_bar.max_value = B_filams_max_value
	l_bar.value = B_filams
	#life bar end
	
	#energy bar start
	e_bar.min_value = A_filams_min_value
	e_bar.max_value = A_filams_max_value
	e_bar.value = A_filams
	#energy bar end
	
	A_filams += .02
	B_filams += .02
	pass
