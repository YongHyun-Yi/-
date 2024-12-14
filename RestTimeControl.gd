extends HBoxContainer

@onready var RestHourLabel = $Time/Hour/Label
@onready var RestMin10Label = $Time/Min10/Label
@onready var RestMin1Label = $Time/Min1/Label
@onready var RestSec10Label = $Time/Sec10/Label
@onready var RestSec1Label = $Time/Sec1/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	RestTimeLabelUpdate()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func RestTimeLabelUpdate():
	var RestTime = GlobalScript.RestTime
	
	RestHourLabel.text = str(RestTime / 3600)
	RestTime %= 3600
	RestMin10Label.text = str(RestTime / 60 / 10)
	RestMin1Label.text = str(RestTime / 60 % 10)
	RestTime %= 60
	RestSec10Label.text = str(RestTime / 10)
	RestSec1Label.text = str(RestTime % 10)
	return
