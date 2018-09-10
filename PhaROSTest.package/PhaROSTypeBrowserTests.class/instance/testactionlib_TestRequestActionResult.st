test-actionlib/
testactionlib_TestRequestActionResult
	| definition | 
	definition :=  browser type: 'actionlib/TestRequestActionResult'. 
	self assert: definition typeName = 'actionlib/TestRequestActionResult'.
	self assert: definition md5Sum = '0476d1fdf437a3a6e7d6d0e9f5561298'.
		