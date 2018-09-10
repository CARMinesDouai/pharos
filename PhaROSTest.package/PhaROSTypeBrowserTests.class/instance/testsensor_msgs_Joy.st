test-sensor_msgs/
testsensor_msgs_Joy
	| definition | 
	definition :=  browser type: 'sensor_msgs/Joy'. 
	self assert: definition typeName = 'sensor_msgs/Joy'.
	self assert: definition md5Sum = '5a9ea5f83505693b71e785041e67a8bb'.
		