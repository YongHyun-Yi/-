extends HBoxContainer

@onready var RestHourLabel = $Time/Hour/Label
@onready var RestMinLabel = $Time/Min/Label
@onready var RestSecLabel = $Time/Sec/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	RestTimeLabelUpdate()
	GlobalScript.RestTimeData.ValueUpdate.connect(RestTimeLabelUpdate)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func RestTimeLabelUpdate():
	RestHourLabel.text = str(GlobalScript.RestTimeData.Hour)
	RestMinLabel.text = str("%02d" % GlobalScript.RestTimeData.Min)
	RestSecLabel.text = str("%02d" % GlobalScript.RestTimeData.Sec)
	return

func HourAdd1Button() -> void:
	GlobalScript.RestTimeData.Hour += 1
	return

func HourSub1Button() -> void:
	GlobalScript.RestTimeData.Hour -= 1
	return

func MinAdd10Button() -> void:
	GlobalScript.RestTimeData.Min += 10
	return

func MinSub10Button() -> void:
	GlobalScript.RestTimeData.Min -= 10
	return

func MinAdd1Button() -> void:
	GlobalScript.RestTimeData.Min += 1
	return

func MinSub1Button() -> void:
	GlobalScript.RestTimeData.Min -= 1
	return

func SecAdd10Button() -> void:
	GlobalScript.RestTimeData.Sec += 10
	return

func SecSub10Button() -> void:
	GlobalScript.RestTimeData.Sec -= 10
	return

func SecAdd1Button() -> void:
	GlobalScript.RestTimeData.Sec += 1
	return

func SecSub1Button() -> void:
	GlobalScript.RestTimeData.Sec -= 1
	return
