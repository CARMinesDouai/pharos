test-sensor_msgs/
testsensor_msgs_LaserScan
	| definition | 
	definition :=  browser type: 'sensor_msgs/LaserScan'. 
	self assert: definition typeName = 'sensor_msgs/LaserScan'.
	self assert: definition md5Sum = '90c7ef2dc6895d81024acba2ac42f369'.
		