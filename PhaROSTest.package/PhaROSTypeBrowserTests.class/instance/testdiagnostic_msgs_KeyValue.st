test-diagnostic_msgs/
testdiagnostic_msgs_KeyValue
	| definition | 
	definition :=  browser type: 'diagnostic_msgs/KeyValue'. 
	self assert: definition typeName = 'diagnostic_msgs/KeyValue'.
	self assert: definition md5Sum = 'cf57fdc6617a881a88c16e768132149c'.
		