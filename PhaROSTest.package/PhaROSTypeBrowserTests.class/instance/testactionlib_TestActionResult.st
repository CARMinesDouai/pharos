test-actionlib/
testactionlib_TestActionResult
	| definition | 
	definition :=  browser type: 'actionlib/TestActionResult'. 
	self assert: definition typeName = 'actionlib/TestActionResult'.
	self assert: definition md5Sum = '3d669e3a63aa986c667ea7b0f46ce85e'.
		