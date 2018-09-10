test-control_msgs/
testcontrol_msgs_FollowJointTrajectoryAction
	| definition | 
	definition :=  browser type: 'control_msgs/FollowJointTrajectoryAction'. 
	self assert: definition typeName = 'control_msgs/FollowJointTrajectoryAction'.
	self assert: definition md5Sum = 'bc4f9b743838566551c0390c65f1a248'.
		