test-actionlib/
testactionlib_TwoIntsResult
	| definition | 
	definition :=  browser type: 'actionlib/TwoIntsResult'. 
	self assert: definition typeName = 'actionlib/TwoIntsResult'.
	self assert: definition md5Sum = 'b88405221c77b1878a3cbbfff53428d7'.
		