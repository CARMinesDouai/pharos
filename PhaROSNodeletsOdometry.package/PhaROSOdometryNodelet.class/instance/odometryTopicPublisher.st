as yet unclassified
odometryTopicPublisher
	^ odometryTopicPublisher
		ifNil: [ 
			odometryTopicPublisher := self rosnode
				topicPublisher: PhaROSOdometryNodelet odometryTopic
				typedAs: PhaROSOdometryNodelet odometryTopicType ]