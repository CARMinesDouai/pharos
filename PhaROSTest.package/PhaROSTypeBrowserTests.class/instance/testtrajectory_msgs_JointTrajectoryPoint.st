test-trajectory_msgs/
testtrajectory_msgs_JointTrajectoryPoint
	| definition | 
	definition :=  browser type: 'trajectory_msgs/JointTrajectoryPoint'. 
	self assert: definition typeName = 'trajectory_msgs/JointTrajectoryPoint'.
	self assert: definition md5Sum = 'f3cd1e1c4d320c79d6985c904ae5dcd3'.
		