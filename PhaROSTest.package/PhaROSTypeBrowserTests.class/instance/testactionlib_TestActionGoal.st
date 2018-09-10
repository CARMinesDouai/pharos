test-actionlib/
testactionlib_TestActionGoal
	| definition | 
	definition :=  browser type: 'actionlib/TestActionGoal'. 
	self assert: definition typeName = 'actionlib/TestActionGoal'.
	self assert: definition md5Sum = '348369c5b403676156094e8c159720bf'.
		