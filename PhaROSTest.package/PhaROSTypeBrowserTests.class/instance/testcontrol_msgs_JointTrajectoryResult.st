test-control_msgs/
testcontrol_msgs_JointTrajectoryResult
	| definition | 
	definition :=  browser type: 'control_msgs/JointTrajectoryResult'. 
	self assert: definition typeName = 'control_msgs/JointTrajectoryResult'.
	self assert: definition md5Sum = 'd41d8cd98f00b204e9800998ecf8427e'.
		