topic-publishing
initializeCancelGoalPublisherFor: aPackage

	cancelGoal := aPackage rosnode
		topicPublisher: PhaROSMoveBaseClient cancelGoalTopic
		typedAs: PhaROSMoveBaseClient cancelGoalTopicType