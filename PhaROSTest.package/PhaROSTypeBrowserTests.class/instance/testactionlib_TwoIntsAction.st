test-actionlib/
testactionlib_TwoIntsAction
	| definition | 
	definition :=  browser type: 'actionlib/TwoIntsAction'. 
	self assert: definition typeName = 'actionlib/TwoIntsAction'.
	self assert: definition md5Sum = '6d1aa538c4bd6183a2dfb7fcac41ee50'.
		