publishing
testTopicPublisher
	| publisher  typeID node topic  |


	node := PhaROSNodeMock new.
	topic := PhaROSTopic new name: 'topic'; type: 'type'; yourself .
 
	publisher := PhaROSTopicPublisher node: node topic: topic.

	publisher send: [].
	self assert: 'topic' = node topic.
	self assert: node received = #sendTo:typedAs:a:.
	