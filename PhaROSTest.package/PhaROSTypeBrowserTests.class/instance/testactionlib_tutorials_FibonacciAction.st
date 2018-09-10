test-actionlib_tutorials/
testactionlib_tutorials_FibonacciAction
	| definition | 
	definition :=  browser type: 'actionlib_tutorials/FibonacciAction'. 
	self assert: definition typeName = 'actionlib_tutorials/FibonacciAction'.
	self assert: definition md5Sum = 'f59df5767bf7634684781c92598b2406'.
		