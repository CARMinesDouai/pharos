conditions to relay
lastFeebackIsMoreThan: durationThreshold olderThan: aFreshFeedbackMessage
	^ lastFeedback header stamp asDateAndTime - aFreshFeedbackMessage header stamp asDateAndTime > durationThreshold