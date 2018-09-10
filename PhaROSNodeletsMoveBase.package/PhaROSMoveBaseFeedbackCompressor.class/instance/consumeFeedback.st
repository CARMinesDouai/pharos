topic-subscription
consumeFeedback

	feedbackSubscribedTopic := (self controller node buildConnectionFor: PhaROSMoveBaseClient realFeedbackTopic)
		typedAs: PhaROSMoveBaseClient feedbackTopicType;
		for: [ :msg | self relay: msg ]
	