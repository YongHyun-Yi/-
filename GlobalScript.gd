extends Node

# 모두 초 단위로 관리
# 기본값
# 집중시간 20분
# 휴식시간 5분
var FocusTimeData = TimeStruct.new(0, 20, 0)
var RestTimeData = TimeStruct.new(0, 5, 0)
