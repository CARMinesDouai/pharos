publishing
createInputChannelForTopic: aTopic
	| channel |
	
	channel := PhaROSInPutChannel new.
	channel owner: node.
	channel topic: aTopic.
	aTopic  registerChannel: channel.
	
	channel initialize: [ self resolvePublishersFor: aTopic ].
	
	
	^ channel.