test-actionlib/
testactionlib_TestRequestAction
	| definition | 
	definition :=  browser type: 'actionlib/TestRequestAction'. 
	self assert: definition typeName = 'actionlib/TestRequestAction'.
	self assert: definition md5Sum = 'dc44b1f4045dbf0d1db54423b3b86b30'.
		