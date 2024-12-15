extends Control
enum {FOCUS, REST}

@export var CurState = FOCUS
@export var IsPaused = false

# 일단 시작은 집중 시간부터
# 미리 time setting, pomo timer 씬이 로드되어있는 채로시작한다면
# 이 부분은 들어낸다...
func _ready() -> void:
	$Timer.wait_time = GetWaitTimeFromTs(GlobalScript.FocusTimeData)
	$Timer.start()
	pass # Replace with function body.

# 현재 타이머의 남은 시간을 계속해서 표시 함
func _process(delta: float) -> void:
	var time_left = int($Timer.time_left)
	$Time/Hour.text = str(time_left / 3600)
	$Time/Min.text = str("%02d" % (time_left % 3600 / 60))
	$Time/Sec.text = str("%02d" % (time_left % 3600 % 60))
	pass

# TimeStruct의 시간을 초 단위로 반환
# 혹시 모를 다수의 TImeStruct를 대비해서 모듈화 한다
func GetWaitTimeFromTs(ts: TimeStruct) -> int:
	var ret: int = 0;
	
	ret += ts.Hour * 3600
	ret += ts.Min * 60
	ret += ts.Sec
	
	return ret

# 현재 시간이 종료되면 CurStats를 토글한다
# 이 부분을 토글 따로 렌더 따로 나눌 수 있을까...
func TimerTimeout() -> void:
	match CurState:
		FOCUS:
			CurState = REST
			$Label.text = "휴식 시간"
			$Timer.wait_time = GetWaitTimeFromTs(GlobalScript.RestTimeData)
			
		REST:
			CurState = FOCUS
			$Label.text = "집중 시간"
			$Timer.wait_time = GetWaitTimeFromTs(GlobalScript.FocusTimeData)
	
	$Timer.start()
	pass # Replace with function body.
