topic-publishing
feedbackPublishingTopic 
	^ feedbackPublishingTopic ifNil: [ 
			feedbackPublishingTopic  := self controller node 
										topicPublisher: PhaROSMoveBaseClient realFeedbackTopic  
										typedAs: PhaROSMoveBaseClient feedbackTopicType 
		].