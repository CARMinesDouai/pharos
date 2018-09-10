topic-publishing
initializeMovebaseGoalPublisherFor: aPackage
	
	movebaseGoal := aPackage rosnode
		topicPublisher: PhaROSMoveBaseClient goalTopic
		typedAs: PhaROSMoveBaseClient goalTopicType