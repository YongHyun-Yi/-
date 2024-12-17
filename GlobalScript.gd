extends Node

# 모두 초 단위로 관리
# 기본값
# 집중시간 20분
# 휴식시간 5분
var FocusTimeData = TimeStruct.new(0, 20, 0)
var RestTimeData = TimeStruct.new(0, 10, 0)

# 타이머 토글시 재생되는 음악
var FocusMusicWav = preload("res://sfx/수업종10.wav")
var RestMusicWav = preload("res://sfx/수업종5.wav")
