test-sensor_msgs/
testsensor_msgs_CameraInfo
	| definition | 
	definition :=  browser type: 'sensor_msgs/CameraInfo'. 
	self assert: definition typeName = 'sensor_msgs/CameraInfo'.
	self assert: definition md5Sum = 'c9a58c1b0b154e0e6da7578cb991d214'.
		