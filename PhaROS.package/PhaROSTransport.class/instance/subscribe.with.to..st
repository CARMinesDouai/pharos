publishing
subscribe: aNodeName with: aSocket to: aTopicID 
	| topic extNode handshakeMessage channel |
	
	topic := master lookupTopic: aTopicID.
	channel := (topic  publishingChannelFor: node).
	[ 
	handshakeMessage := PhaROSHSMessageHeader newPublisherWith: [ :msg |
		msg callerId: channel owner name.
		msg md5Sum: topic md5Sum.
		msg type: topic type.
		msg latching: topic isLatched.
	].

 ] on: Error do: [ :e | e halt ].

	handshakeMessage sendTo: aSocket.
	
	
	extNode := PhaROSExternalSubscriberNode named: aNodeName subscriberOf: topic with: aSocket.
	channel subscribe: extNode.
	^ channel