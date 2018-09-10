test-actionlib/
testactionlib_TestRequestActionFeedback
	| definition | 
	definition :=  browser type: 'actionlib/TestRequestActionFeedback'. 
	self assert: definition typeName = 'actionlib/TestRequestActionFeedback'.
	self assert: definition md5Sum = 'aae20e09065c3809e8a8e87c4c8953fd'.
		