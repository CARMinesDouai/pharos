test-actionlib/
testactionlib_TestGoal
	| definition | 
	definition :=  browser type: 'actionlib/TestGoal'. 
	self assert: definition typeName = 'actionlib/TestGoal'.
	self assert: definition md5Sum = '18df0149936b7aa95588e3862476ebde'.
		