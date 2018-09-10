test-actionlib_tutorials/
testactionlib_tutorials_FibonacciActionGoal
	| definition | 
	definition :=  browser type: 'actionlib_tutorials/FibonacciActionGoal'. 
	self assert: definition typeName = 'actionlib_tutorials/FibonacciActionGoal'.
	self assert: definition md5Sum = '006871c7fa1d0e3d5fe2226bf17b2a94'.
		