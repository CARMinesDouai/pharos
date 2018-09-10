test-actionlib_tutorials/
testactionlib_tutorials_FibonacciActionFeedback
	| definition | 
	definition :=  browser type: 'actionlib_tutorials/FibonacciActionFeedback'. 
	self assert: definition typeName = 'actionlib_tutorials/FibonacciActionFeedback'.
	self assert: definition md5Sum = '73b8497a9f629a31c0020900e4148f07'.
		