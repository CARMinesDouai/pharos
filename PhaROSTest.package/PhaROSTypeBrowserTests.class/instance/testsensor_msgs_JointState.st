test-sensor_msgs/
testsensor_msgs_JointState
	| definition | 
	definition :=  browser type: 'sensor_msgs/JointState'. 
	self assert: definition typeName = 'sensor_msgs/JointState'.
	self assert: definition md5Sum = '3066dcd76a6cfaef579bd0f34173e9fd'.
		