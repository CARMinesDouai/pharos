as yet unclassified
initialize
	super initialize.
	 self trajectory: Trajectory_msgsJointTrajectory new. 
	 self path_tolerance: OrderedCollection new . 
	 self goal_tolerance: OrderedCollection new . 
	 self goal_time_tolerance:  Duration seconds: 0. 
