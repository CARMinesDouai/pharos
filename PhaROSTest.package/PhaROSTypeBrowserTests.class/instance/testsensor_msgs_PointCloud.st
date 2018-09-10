test-sensor_msgs/
testsensor_msgs_PointCloud
	| definition | 
	definition :=  browser type: 'sensor_msgs/PointCloud'. 
	self assert: definition typeName = 'sensor_msgs/PointCloud'.
	self assert: definition md5Sum = 'd8e9c3f5afbdd8a130fd1d2763945fca'.
		