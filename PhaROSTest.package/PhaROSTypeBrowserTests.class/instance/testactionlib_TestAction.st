test-actionlib/
testactionlib_TestAction
	| definition | 
	definition :=  browser type: 'actionlib/TestAction'. 
	self assert: definition typeName = 'actionlib/TestAction'.
	self assert: definition md5Sum = '991e87a72802262dfbe5d1b3cf6efc9a'.
		