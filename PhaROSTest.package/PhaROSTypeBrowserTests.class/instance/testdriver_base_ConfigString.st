test-driver_base/
testdriver_base_ConfigString
	| definition | 
	definition :=  browser type: 'driver_base/ConfigString'. 
	self assert: definition typeName = 'driver_base/ConfigString'.
	self assert: definition md5Sum = 'bc6ccc4a57f61779c8eaae61e9f422e0'.
		