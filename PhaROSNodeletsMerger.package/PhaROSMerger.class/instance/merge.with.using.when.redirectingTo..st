as yet unclassified
merge: aConnectedTopicFlux with: anOtherConnectedTopicFlux using: aTransformation when: aCondition redirectingTo: aTopicPublisher
	this := aConnectedTopicFlux.
	that := anOtherConnectedTopicFlux.
	
	aConnectedTopicFlux for: (self mergerCallback: aConnectedTopicFlux).
	anOtherConnectedTopicFlux for: (self mergerCallback: anOtherConnectedTopicFlux).
	condition := aCondition.
	transformation := aTransformation.
	outgoing := aTopicPublisher.