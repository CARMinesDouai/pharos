as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self joint_names: OrderedCollection new . 
	 self desired: Trajectory_msgsJointTrajectoryPoint new. 
	 self actual: Trajectory_msgsJointTrajectoryPoint new. 
	 self error: Trajectory_msgsJointTrajectoryPoint new. 
