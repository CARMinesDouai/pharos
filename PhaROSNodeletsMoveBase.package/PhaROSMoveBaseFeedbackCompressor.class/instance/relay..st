topic-publishing
relay: aFreshFeedbackMessage
	| durationThreshold |
	durationThreshold := 3 seconds.
	
	lastFeedback
		ifNil: [ self send: aFreshFeedbackMessage ]
		ifNotNil: [ 
				((self lastFeebackHasDifferentGoalIDComparedTo: aFreshFeedbackMessage)
				or: [ 
				(self lastFeebackHasDifferentStatusComparedTo: aFreshFeedbackMessage)
				or: [ 
				self lastFeebackIsMoreThan: durationThreshold olderThan: aFreshFeedbackMessage ]])
				ifTrue: [ self send: aFreshFeedbackMessage ] 
		].
		