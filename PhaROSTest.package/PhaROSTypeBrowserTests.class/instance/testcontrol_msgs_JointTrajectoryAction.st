test-control_msgs/
testcontrol_msgs_JointTrajectoryAction
	| definition | 
	definition :=  browser type: 'control_msgs/JointTrajectoryAction'. 
	self assert: definition typeName = 'control_msgs/JointTrajectoryAction'.
	self assert: definition md5Sum = 'a04ba3ee8f6a2d0985a6aeaf23d9d7ad'.
		