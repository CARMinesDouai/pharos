as yet unclassified
initialize
	super initialize.
	 self action_goal: Control_msgsGripperCommandActionGoal new. 
	 self action_result: Control_msgsGripperCommandActionResult new. 
	 self action_feedback: Control_msgsGripperCommandActionFeedback new. 
