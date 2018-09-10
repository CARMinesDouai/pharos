test-actionlib/
testactionlib_TestResult
	| definition | 
	definition :=  browser type: 'actionlib/TestResult'. 
	self assert: definition typeName = 'actionlib/TestResult'.
	self assert: definition md5Sum = '034a8e20d6a306665e3a5b340fab3f09'.
		