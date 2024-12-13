extends Control

@onready var FocusHourLabel = $VBoxContainer/FocusTime/Time/Hour/Label
@onready var FocusMin10Label = $VBoxContainer/FocusTime/Time/Min10/Label
@onready var FocusMin1Label = $VBoxContainer/FocusTime/Time/Min1/Label
@onready var FocusSec10Label = $VBoxContainer/FocusTime/Time/Sec10/Label
@onready var FocusSec1Label = $VBoxContainer/FocusTime/Time/Sec1/Label

@onready var RestHourLabel = $VBoxContainer/RestTime/Time/Hour/Label
@onready var RestMin10Label = $VBoxContainer/RestTime/Time/Min10/Label
@onready var RestMin1Label = $VBoxContainer/RestTime/Time/Min1/Label
@onready var RestSec10Label = $VBoxContainer/RestTime/Time/Sec10/Label
@onready var RestSec1Label = $VBoxContainer/RestTime/Time/Sec1/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var FocusTime = GlobalScript.FocusTime
	FocusHourLabel.text = str(FocusTime / 3600)
	FocusTime %= 3600
	FocusMin10Label.text = str(FocusTime / 60 / 10)
	FocusMin1Label.text = str(FocusTime / 60 % 10)
	FocusTime %= 60
	FocusSec10Label.text = str(FocusTime / 10)
	FocusSec1Label.text = str(FocusTime % 10)
	
	var RestTime = GlobalScript.RestTime
	RestHourLabel.text = str(RestTime / 3600)
	RestTime %= 3600
	RestMin10Label.text = str(RestTime / 60 / 10)
	RestMin1Label.text = str(RestTime / 60 % 10)
	RestTime %= 60
	RestSec10Label.text = str(RestTime / 10)
	RestSec1Label.text = str(RestTime % 10)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
