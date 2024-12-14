extends Node
class_name TimeStruct

var Hour: int = 0 : set = SetHour
var Min: int = 0 : set = SetMin
var Sec: int = 0 : set = SetSec

func _init(h = 0, m = 0, s = 0):
	Hour = h
	Min = m
	Sec = s

func SetHour(value: int):
	Hour = clamp(value, 0, 24)

func SetMin(value: int):
	if value >= 0:
		if value >= 60:
			Min = value % 60
		else:
			Min = value
	else:
		# (-)버튼을 까먹고 있었다...
		# 이때를 상정한 보정은 여기서
		Min = 0

func SetSec(value: int):
	if value >= 0:
		if value >= 60:
			Sec = value % 60
		else:
			Sec = value
	else:
		Sec = 0
