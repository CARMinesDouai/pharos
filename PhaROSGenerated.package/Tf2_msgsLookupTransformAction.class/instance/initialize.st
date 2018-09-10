as yet unclassified
initialize
	super initialize.
	 self action_goal: Tf2_msgsLookupTransformActionGoal new. 
	 self action_result: Tf2_msgsLookupTransformActionResult new. 
	 self action_feedback: Tf2_msgsLookupTransformActionFeedback new. 
