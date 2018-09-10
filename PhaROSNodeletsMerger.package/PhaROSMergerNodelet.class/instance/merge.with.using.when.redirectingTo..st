as yet unclassified
merge: aTopicFlux with: anOtherTopicFlux using: aTransformation when: aCondition redirectingTo: aTopicPublisher
	| merger |
	merger := PhaROSMerger new.
	merger merge: aTopicFlux with: anOtherTopicFlux using: aTransformation  when: aCondition redirectingTo: aTopicPublisher.
	mergers add: merger.
	^ merger.