extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func StartButtonDown() -> void:
	# 시간의 최소값을 확인한다
	# 여기서 처리하는게 맞을까...
	if GlobalScript.FocusTimeData.GetTotalSec() > 0 && GlobalScript.RestTimeData.GetTotalSec() > 0:
		$TimeSetting.hide()
		$PomoTimer.show()
	elif $TimeSetting/TimeError.visible == false:
		$TimeSetting/TimeError.show()
	pass # Replace with function body.


func StopButtonDown() -> void:
	$TimeSetting.show()
	$PomoTimer.hide()
	pass # Replace with function body.
