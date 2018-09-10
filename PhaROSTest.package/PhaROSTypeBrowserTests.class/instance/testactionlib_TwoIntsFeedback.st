test-actionlib/
testactionlib_TwoIntsFeedback
	| definition | 
	definition :=  browser type: 'actionlib/TwoIntsFeedback'. 
	self assert: definition typeName = 'actionlib/TwoIntsFeedback'.
	self assert: definition md5Sum = 'd41d8cd98f00b204e9800998ecf8427e'.
		