test-actionlib/
testactionlib_TestRequestGoal
	| definition | 
	definition :=  browser type: 'actionlib/TestRequestGoal'. 
	self assert: definition typeName = 'actionlib/TestRequestGoal'.
	self assert: definition md5Sum = 'db5d00ba98302d6c6dd3737e9a03ceea'.
		