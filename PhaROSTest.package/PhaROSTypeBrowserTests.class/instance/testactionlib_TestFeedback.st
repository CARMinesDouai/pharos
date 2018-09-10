test-actionlib/
testactionlib_TestFeedback
	| definition | 
	definition :=  browser type: 'actionlib/TestFeedback'. 
	self assert: definition typeName = 'actionlib/TestFeedback'.
	self assert: definition md5Sum = '49ceb5b32ea3af22073ede4a0328249e'.
		