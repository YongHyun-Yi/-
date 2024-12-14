extends HBoxContainer

@onready var FocusHourLabel = $Time/Hour/Label
@onready var FocusMin10Label = $Time/Min10/Label
@onready var FocusMin1Label = $Time/Min1/Label
@onready var FocusSec10Label = $Time/Sec10/Label
@onready var FocusSec1Label = $Time/Sec1/Label

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
	
	FocusMin10Label.text = str(GlobalScript.FocusTimeData.Min / 10)
	FocusMin1Label.text = str(GlobalScript.FocusTimeData.Min % 10)
	
	FocusSec10Label.text = str(GlobalScript.FocusTimeData.Sec / 10)
	FocusSec1Label.text = str(GlobalScript.FocusTimeData.Sec % 10)
	return

func HourAdd1Button() -> void:
	GlobalScript.FocusTimeData.Hour += 1
	return

func MinAdd10Button() -> void:
	GlobalScript.FocusTimeData.Min += 10
	return

func MinAdd1Button() -> void:
	GlobalScript.FocusTimeData.Min += 1
	return

func SecAdd10Button() -> void:
	GlobalScript.FocusTimeData.Sec += 10
	return

func SecAdd1Button() -> void:
	GlobalScript.FocusTimeData.Sec += 1
	return
