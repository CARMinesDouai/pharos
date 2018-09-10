building
connect
	| flux |
	flux := self build. 
	
	typeID ifNil: [
		node interestedIn: topicName for: flux	
	] ifNotNil: [
		node interestedIn: topicName typedAs: typeID for: flux 	
	].

	^ flux.