extends Control

@onready var _time_label: Label = %TimeLabel

@onready var replay_button: Button = %ReplayButton
@onready var quit_button: Button = %QuitButton

var _start_time := Time.get_ticks_msec()


func open() -> void:
	visible = true
	get_tree().paused = true

	var end_time := Time.get_ticks_msec()
	var total_time_msec := end_time - _start_time
	var total_time_s := snappedf(total_time_msec / 1000.0, 0.1)
	_time_label.text = "Time: " + str(total_time_s) + "s"
	
