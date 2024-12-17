extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func StartButtonDown() -> void:
	$TimeSetting.hide()
	$PomoTimer.show()
	pass # Replace with function body.


func StopButtonDown() -> void:
	$TimeSetting.show()
	$PomoTimer.hide()
	pass # Replace with function body.
