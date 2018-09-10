scripts-publish/subscribe
scriptPublishExample
	| publisher |
	
	publisher := self controller node 
						topicPublisher: 'example'
						typedAs: 'std_msgs/String'.	
	[[
		|message| 
		message := 'msg ', messageCount asString.
		1 second wait.
		publisher send:[ : string | 
			string data: message.
		].
		self log: 'Toto sent: ',message, String lf.
		messageCount := messageCount + 1.
	] repeat] forkAt: Processor userBackgroundPriority.