extends HBoxContainer

@onready var RestHourLabel = $Time/Hour/Label
@onready var RestMin10Label = $Time/Min10/Label
@onready var RestMin1Label = $Time/Min1/Label
@onready var RestSec10Label = $Time/Sec10/Label
@onready var RestSec1Label = $Time/Sec1/Label

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
	
	RestMin10Label.text = str(GlobalScript.RestTimeData.Min / 10)
	RestMin1Label.text = str(GlobalScript.RestTimeData.Min % 10)
	
	RestSec10Label.text = str(GlobalScript.RestTimeData.Sec / 10)
	RestSec1Label.text = str(GlobalScript.RestTimeData.Sec % 10)
	return
