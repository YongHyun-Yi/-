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
	Hour = wrap(value, 0, 24)

func normalize_10(value: int) -> int:
	# 60을 넘어가면 10의 자리를 0으로 설정
	if value >= 60:
		return value % 10
	# 0보다 작다면 10의 자리를 5로 설정
	elif value < 0:
		return 50 + abs(value % 10)
	return value

func normalize_1(value: int) -> int:
	# 내림이 발생했다면 1의 자리를정 9로 설정
	if Min > value:
		return (value / 10) + 9
	# 올림이 발생했다면 1의 자리를 0으로 설정
	else:
		return value / 10
	return value

func SetMin(value: int):
	if abs(Min - value) >= 10:
		# 10의 자리만 수정하게 보정한다
		value = normalize_10(value)
	else:
		# 1의 자리만 수정하게 보정한다
		if (Min / 10 != value / 10):
			value = normalize_1(value)
	Min = value

func SetSec(value: int):
	if abs(Sec - value) >= 10:
		# 10의 자리만 수정하게 보정한다
		value = normalize_10(value)
	else:
		# 1의 자리만 수정하게 보정한다
		if (Sec / 10 != value / 10):
			value = normalize_1(value)
	Sec = value
