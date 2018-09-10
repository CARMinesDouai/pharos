as yet unclassified
mapPoints
	pointing  ifNil: [
		pointing := self rosnode topicPublisher: PhaROSLocalizerNodelet pointMapTopic typedAs: PhaROSLocalizerNodelet pointMapTopicType.
		self paralellize looping broadcastPoints.
	].