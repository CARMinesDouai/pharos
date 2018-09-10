test-trajectory_msgs/
testtrajectory_msgs_JointTrajectory
	| definition | 
	definition :=  browser type: 'trajectory_msgs/JointTrajectory'. 
	self assert: definition typeName = 'trajectory_msgs/JointTrajectory'.
	self assert: definition md5Sum = '65b4f94a94d1ed67169da35a02f33d3f'.
		