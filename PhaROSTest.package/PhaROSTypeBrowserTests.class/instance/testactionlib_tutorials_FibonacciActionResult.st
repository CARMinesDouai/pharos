test-actionlib_tutorials/
testactionlib_tutorials_FibonacciActionResult
	| definition | 
	definition :=  browser type: 'actionlib_tutorials/FibonacciActionResult'. 
	self assert: definition typeName = 'actionlib_tutorials/FibonacciActionResult'.
	self assert: definition md5Sum = 'bee73a9fe29ae25e966e105f5553dd03'.
		