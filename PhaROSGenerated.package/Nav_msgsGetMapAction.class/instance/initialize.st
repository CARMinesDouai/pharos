as yet unclassified
initialize
	super initialize.
	 self action_goal: Nav_msgsGetMapActionGoal new. 
	 self action_result: Nav_msgsGetMapActionResult new. 
	 self action_feedback: Nav_msgsGetMapActionFeedback new. 
