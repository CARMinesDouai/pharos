test-actionlib/
testactionlib_TwoIntsActionFeedback
	| definition | 
	definition :=  browser type: 'actionlib/TwoIntsActionFeedback'. 
	self assert: definition typeName = 'actionlib/TwoIntsActionFeedback'.
	self assert: definition md5Sum = 'aae20e09065c3809e8a8e87c4c8953fd'.
		