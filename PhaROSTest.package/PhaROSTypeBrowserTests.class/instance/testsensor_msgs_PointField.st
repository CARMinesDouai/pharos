test-sensor_msgs/
testsensor_msgs_PointField
	| definition | 
	definition :=  browser type: 'sensor_msgs/PointField'. 
	self assert: definition typeName = 'sensor_msgs/PointField'.
	self assert: definition md5Sum = '268eacb2962780ceac86cbd17e328150'.
		