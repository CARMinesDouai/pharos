test-actionlib/
testactionlib_TestRequestActionGoal
	| definition | 
	definition :=  browser type: 'actionlib/TestRequestActionGoal'. 
	self assert: definition typeName = 'actionlib/TestRequestActionGoal'.
	self assert: definition md5Sum = '1889556d3fef88f821c7cb004e4251f3'.
		