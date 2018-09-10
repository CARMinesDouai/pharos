test-diagnostic_msgs/
testdiagnostic_msgs_DiagnosticArray
	| definition | 
	definition :=  browser type: 'diagnostic_msgs/DiagnosticArray'. 
	self assert: definition typeName = 'diagnostic_msgs/DiagnosticArray'.
	self assert: definition md5Sum = '60810da900de1dd6ddd437c3503511da'.
		