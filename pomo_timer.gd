extends Control
enum {FOCUS, REST}

@export var CurState = FOCUS

func _on_visibility_changed() -> void:
	if visible == true:
		# 일단 시작은 집중 시간부터
		CurState = FOCUS
		$Label.text = "집중 시간"
		$HBoxContainer/PauseButton.text = "일시정지"
		$Timer.wait_time = GetWaitTimeFromTs(GlobalScript.FocusTimeData)
		$Timer.start()
		$Timer.paused = false
	else:
		$Timer.stop()
	pass # Replace with function body.

func _ready() -> void:
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
			$HBoxContainer/SkipButton.disabled = false
			
		REST:
			CurState = FOCUS
			$Label.text = "집중 시간"
			$Timer.wait_time = GetWaitTimeFromTs(GlobalScript.FocusTimeData)
			$HBoxContainer/SkipButton.disabled = true
	
	$Timer.start()
	pass # Replace with function body.

func SkipButtonDown() -> void:
	$Timer.stop()
	TimerTimeout()
	pass # Replace with function body.

func PauseButtonDown() -> void:
	if $Timer.paused == true:
		$Timer.paused = false
		$HBoxContainer/PauseButton.text = "일시정지"
	else:
		$Timer.paused = true
		$HBoxContainer/PauseButton.text = "계속하기"
	pass # Replace with function body.
