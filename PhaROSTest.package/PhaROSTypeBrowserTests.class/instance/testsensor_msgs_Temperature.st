test-sensor_msgs/
testsensor_msgs_Temperature
	| definition | 
	definition :=  browser type: 'sensor_msgs/Temperature'. 
	self assert: definition typeName = 'sensor_msgs/Temperature'.
	self assert: definition md5Sum = 'ff71b307acdbe7c871a5a6d7ed359100'.
		