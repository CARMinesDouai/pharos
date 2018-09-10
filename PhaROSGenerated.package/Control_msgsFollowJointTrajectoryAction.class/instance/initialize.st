as yet unclassified
initialize
	super initialize.
	 self action_goal: Control_msgsFollowJointTrajectoryActionGoal new. 
	 self action_result: Control_msgsFollowJointTrajectoryActionResult new. 
	 self action_feedback: Control_msgsFollowJointTrajectoryActionFeedback new. 
