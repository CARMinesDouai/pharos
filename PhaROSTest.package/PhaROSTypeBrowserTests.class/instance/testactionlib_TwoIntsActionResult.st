test-actionlib/
testactionlib_TwoIntsActionResult
	| definition | 
	definition :=  browser type: 'actionlib/TwoIntsActionResult'. 
	self assert: definition typeName = 'actionlib/TwoIntsActionResult'.
	self assert: definition md5Sum = '3ba7dea8b8cddcae4528ade4ef74b6e7'.
		