as yet unclassified
map
	mapping ifNil: [
		mapping := self rosnode topicPublisher: PhaROSLocalizerNodelet mapTopic typedAs: PhaROSLocalizerNodelet mapTopicType.
		self paralellize looping broadcastEntities.
	].