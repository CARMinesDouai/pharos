as yet unclassified
merge: aTopicFlux with: anOtherTopicFlux using: aTransformation redirectingTo: aTopicPublisher
	| merger |
	merger := PhaROSMerger new.
	merger merge: aTopicFlux with: anOtherTopicFlux using: aTransformation redirectingTo: aTopicPublisher.
	mergers add: merger.
	^ merger.