topic-subscription
consumeCompressedFeedbackFor: aPackage

	(aPackage rosnode buildConnectionFor: PhaROSMoveBaseClient feedbackTopic) 
		typedAs: PhaROSMoveBaseClient feedbackTopicType;
		for: [ : msg | self feedback: msg ] ;
		connect.	
	