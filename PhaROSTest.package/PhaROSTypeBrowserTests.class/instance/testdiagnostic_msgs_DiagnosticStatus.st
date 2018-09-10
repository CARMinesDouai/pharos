test-diagnostic_msgs/
testdiagnostic_msgs_DiagnosticStatus
	| definition | 
	definition :=  browser type: 'diagnostic_msgs/DiagnosticStatus'. 
	self assert: definition typeName = 'diagnostic_msgs/DiagnosticStatus'.
	self assert: definition md5Sum = 'd0ce08bc6e5ba34c7754f563a9cabaf1'.
		