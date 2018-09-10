test-actionlib/
testactionlib_TwoIntsGoal
	| definition | 
	definition :=  browser type: 'actionlib/TwoIntsGoal'. 
	self assert: definition typeName = 'actionlib/TwoIntsGoal'.
	self assert: definition md5Sum = '36d09b846be0b371c5f190354dd3153e'.
		