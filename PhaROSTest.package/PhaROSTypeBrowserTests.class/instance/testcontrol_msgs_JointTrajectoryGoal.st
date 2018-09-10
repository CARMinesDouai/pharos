test-control_msgs/
testcontrol_msgs_JointTrajectoryGoal
	| definition | 
	definition :=  browser type: 'control_msgs/JointTrajectoryGoal'. 
	self assert: definition typeName = 'control_msgs/JointTrajectoryGoal'.
	self assert: definition md5Sum = '2a0eff76c870e8595636c2a562ca298e'.
		