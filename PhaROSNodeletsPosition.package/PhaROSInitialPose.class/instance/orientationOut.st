topic-publishing
orientationOut
	^ orientationOut
		ifNil: [ orientationOut := self rosnode 
													topicPublisher: self class orientationTopic 
													typedAs: self class orientationTopicType ]