test-sensor_msgs/
testsensor_msgs_Imu
	| definition | 
	definition :=  browser type: 'sensor_msgs/Imu'. 
	self assert: definition typeName = 'sensor_msgs/Imu'.
	self assert: definition md5Sum = '6a62c6daae103f4ff57a132d6f95cec2'.
		