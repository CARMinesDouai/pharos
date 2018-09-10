conditions to relay
lastFeebackHasDifferentGoalIDComparedTo: aFreshFeedbackMessage
	^ lastFeedback status goal_id  ~= aFreshFeedbackMessage status goal_id