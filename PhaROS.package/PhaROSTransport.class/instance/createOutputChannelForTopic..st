publishing
createOutputChannelForTopic: aTopic
	| channel |
	
	channel := PhaROSOutPutChannel new.
	channel owner: node.
	channel topic: aTopic.
	channel xmlurl: self comm url.
	
	aTopic registerChannel: channel.
	master registerPublisher: node name to: aTopic name with: aTopic type andCallerUri: self comm url. 
	
	^ channel.