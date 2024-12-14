extends HBoxContainer

@onready var FocusHourLabel = $Time/Hour/Label
@onready var FocusMin10Label = $Time/Min10/Label
@onready var FocusMin1Label = $Time/Min1/Label
@onready var FocusSec10Label = $Time/Sec10/Label
@onready var FocusSec1Label = $Time/Sec1/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	FocusTimeLabelUpdate()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func FocusTimeLabelUpdate():
	var FocusTime = GlobalScript.FocusTime
	
	FocusHourLabel.text = str(FocusTime / 3600)
	FocusTime %= 3600
	FocusMin10Label.text = str(FocusTime / 60 / 10)
	FocusMin1Label.text = str(FocusTime / 60 % 10)
	FocusTime %= 60
	FocusSec10Label.text = str(FocusTime / 10)
	FocusSec1Label.text = str(FocusTime % 10)
	return
