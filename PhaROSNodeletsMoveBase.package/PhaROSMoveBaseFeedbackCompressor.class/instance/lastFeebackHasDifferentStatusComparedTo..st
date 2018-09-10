conditions to relay
lastFeebackHasDifferentStatusComparedTo: aFreshFeedbackMessage
	^ lastFeedback status status ~= aFreshFeedbackMessage status status