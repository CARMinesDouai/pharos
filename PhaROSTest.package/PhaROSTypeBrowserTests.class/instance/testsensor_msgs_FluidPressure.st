test-sensor_msgs/
testsensor_msgs_FluidPressure
	| definition | 
	definition :=  browser type: 'sensor_msgs/FluidPressure'. 
	self assert: definition typeName = 'sensor_msgs/FluidPressure'.
	self assert: definition md5Sum = '804dc5cea1c5306d6a2eb80b9833befe'.
		