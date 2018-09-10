test-actionlib/
testactionlib_TwoIntsActionGoal
	| definition | 
	definition :=  browser type: 'actionlib/TwoIntsActionGoal'. 
	self assert: definition typeName = 'actionlib/TwoIntsActionGoal'.
	self assert: definition md5Sum = '684a2db55d6ffb8046fb9d6764ce0860'.
		