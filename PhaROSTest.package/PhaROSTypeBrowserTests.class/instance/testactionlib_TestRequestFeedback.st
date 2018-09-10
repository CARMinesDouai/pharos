test-actionlib/
testactionlib_TestRequestFeedback
	| definition | 
	definition :=  browser type: 'actionlib/TestRequestFeedback'. 
	self assert: definition typeName = 'actionlib/TestRequestFeedback'.
	self assert: definition md5Sum = 'd41d8cd98f00b204e9800998ecf8427e'.
		