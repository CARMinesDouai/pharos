as yet unclassified
initialize
	super initialize.
	 self action_goal: Control_msgsSingleJointPositionActionGoal new. 
	 self action_result: Control_msgsSingleJointPositionActionResult new. 
	 self action_feedback: Control_msgsSingleJointPositionActionFeedback new. 
