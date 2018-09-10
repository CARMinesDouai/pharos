as yet unclassified
initialize
	super initialize.
	 self action_goal: Actionlib_tutorialsAveragingActionGoal new. 
	 self action_result: Actionlib_tutorialsAveragingActionResult new. 
	 self action_feedback: Actionlib_tutorialsAveragingActionFeedback new. 
