as yet unclassified
initialize
	super initialize.
	 self action_goal: Kobuki_msgsAutoDockingActionGoal new. 
	 self action_result: Kobuki_msgsAutoDockingActionResult new. 
	 self action_feedback: Kobuki_msgsAutoDockingActionFeedback new. 
