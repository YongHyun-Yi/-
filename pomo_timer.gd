extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.wait_time = (GlobalScript.FocusTimeData.Hour * 3600) + (GlobalScript.FocusTimeData.Min * 60) + GlobalScript.FocusTimeData.Sec
	$Timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var time_left = int($Timer.time_left)
	$Time/Hour.text = str(time_left / 3600)
	$Time/Min.text = str("%02d" % (time_left % 3600 / 60))
	$Time/Sec.text = str("%02d" % (time_left % 3600 % 60))
	pass
