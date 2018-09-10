test-actionlib/
testactionlib_TestActionFeedback
	| definition | 
	definition :=  browser type: 'actionlib/TestActionFeedback'. 
	self assert: definition typeName = 'actionlib/TestActionFeedback'.
	self assert: definition md5Sum = '6d3d0bf7fb3dda24779c010a9f3eb7cb'.
		