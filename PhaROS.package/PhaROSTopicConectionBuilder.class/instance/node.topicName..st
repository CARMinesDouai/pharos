accessing
node: aNode topicName: aTopicName
	node := aNode.
	
	self assert: aTopicName isValidROSName.
	topicName := aTopicName.