as yet unclassified
merge: aConnectedTopicFlux with: anOtherConnectedTopicFlux using: aTransformation redirectingTo: aTopicPublisher
	^ self merge: aConnectedTopicFlux with: anOtherConnectedTopicFlux using: aTransformation when: [true] redirectingTo: aTopicPublisher