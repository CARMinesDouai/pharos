package
tfWriter
	
	^ tfWriter ifNil: [
		tfWriter := self rosnode topicPublisher: PhaROSTransformationNodelet tfOutTopic 
								  typedAs: PhaROSTransformationNodelet tfTopicType
								
	].