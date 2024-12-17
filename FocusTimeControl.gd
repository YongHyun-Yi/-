extends HBoxContainer

@onready var FocusHourLabel = $Time/Hour/Label
@onready var FocusMinLabel = $Time/Min/Label
@onready var FocusSecLabel = $Time/Sec/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	FocusTimeLabelUpdate()
	GlobalScript.FocusTimeData.ValueUpdate.connect(FocusTimeLabelUpdate)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func FocusTimeLabelUpdate():
	FocusHourLabel.text = str(GlobalScript.FocusTimeData.Hour)
	FocusMinLabel.text = str("%02d" % GlobalScript.FocusTimeData.Min)
	FocusSecLabel.text = str("%02d" % GlobalScript.FocusTimeData.Sec)
	return

func HourAdd1Button() -> void:
	GlobalScript.FocusTimeData.Hour += 1
	return

func HourSub1Button() -> void:
	GlobalScript.FocusTimeData.Hour -= 1
	return

func MinAdd10Button() -> void:
	GlobalScript.FocusTimeData.Min += 10
	return

func MinSub10Button() -> void:
	GlobalScript.FocusTimeData.Min -= 10
	return

func MinAdd1Button() -> void:
	GlobalScript.FocusTimeData.Min += 1
	return

func MinSub1Button() -> void:
	GlobalScript.FocusTimeData.Min -= 1
	return

func SecAdd10Button() -> void:
	GlobalScript.FocusTimeData.Sec += 10
	return

func SecSub10Button() -> void:
	GlobalScript.FocusTimeData.Sec -= 10
	return

func SecAdd1Button() -> void:
	GlobalScript.FocusTimeData.Sec += 1
	return

func SecSub1Button() -> void:
	GlobalScript.FocusTimeData.Sec -= 1
	return
