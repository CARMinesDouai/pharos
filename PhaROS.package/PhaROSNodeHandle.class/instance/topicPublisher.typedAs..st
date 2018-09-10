building
topicPublisher: aTopicName typedAs: aTypeId
	
	^ self publisher: (self resolveName: aTopicName) typedAs: aTypeId.