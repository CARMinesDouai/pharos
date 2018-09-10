test-control_msgs/
testcontrol_msgs_FollowJointTrajectoryGoal
	| definition | 
	definition :=  browser type: 'control_msgs/FollowJointTrajectoryGoal'. 
	self assert: definition typeName = 'control_msgs/FollowJointTrajectoryGoal'.
	self assert: definition md5Sum = '69636787b6ecbde4d61d711979bc7ecb'.
		