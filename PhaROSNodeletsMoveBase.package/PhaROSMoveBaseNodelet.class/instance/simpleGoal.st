accessing
simpleGoal

	^ simpleGoal
		ifNil: [ 
			simpleGoal := self rosnode
				topicPublisher: PhaROSMoveBaseNodelet simpleGoalTopic
				typedAs: PhaROSMoveBaseNodelet simpleGoalTopicType ]