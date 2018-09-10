test-actionlib_tutorials/
testactionlib_tutorials_FibonacciGoal
	| definition | 
	definition :=  browser type: 'actionlib_tutorials/FibonacciGoal'. 
	self assert: definition typeName = 'actionlib_tutorials/FibonacciGoal'.
	self assert: definition md5Sum = '6889063349a00b249bd1661df429d822'.
		