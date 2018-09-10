as yet unclassified
consumeHeaderId
	| id |
	mutex critical: [
		id := currentId.
		currentId := currentId +1.
	].
	
	^ id.