as yet unclassified
initialize
	super initialize.
	 self action_goal: Actionlib_tutorialsFibonacciActionGoal new. 
	 self action_result: Actionlib_tutorialsFibonacciActionResult new. 
	 self action_feedback: Actionlib_tutorialsFibonacciActionFeedback new. 
