as yet unclassified
initialize
	super initialize.
	 self action_goal: Control_msgsPointHeadActionGoal new. 
	 self action_result: Control_msgsPointHeadActionResult new. 
	 self action_feedback: Control_msgsPointHeadActionFeedback new. 
