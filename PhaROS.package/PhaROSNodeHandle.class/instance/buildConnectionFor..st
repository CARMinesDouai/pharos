building
buildConnectionFor: aTopicID
	^ PhaROSTopicConectionBuilder node: self topicName: (self resolveName: aTopicID).