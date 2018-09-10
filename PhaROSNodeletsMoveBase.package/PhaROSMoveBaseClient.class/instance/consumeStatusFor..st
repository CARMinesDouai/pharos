topic-subscription
consumeStatusFor: aPackage
		
	(aPackage rosnode buildConnectionFor: PhaROSMoveBaseClient statusTopic) 
		typedAs: PhaROSMoveBaseClient statusTopicType;
		for: [ : msg | self status: msg ] ; 
		connect.