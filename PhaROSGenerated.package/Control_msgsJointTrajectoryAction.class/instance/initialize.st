as yet unclassified
initialize
	super initialize.
	 self action_goal: Control_msgsJointTrajectoryActionGoal new. 
	 self action_result: Control_msgsJointTrajectoryActionResult new. 
	 self action_feedback: Control_msgsJointTrajectoryActionFeedback new. 
