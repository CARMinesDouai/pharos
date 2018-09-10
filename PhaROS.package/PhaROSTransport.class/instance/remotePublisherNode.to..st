publishing
remotePublisherNode: anURL to: aTopic
	| socket  message connectionMessage stream |
	
	
	socket := self comm resolveSocketTo: aTopic of: anURL for: node.
		
	
	message := PhaROSHSMessageHeader newSubscriberWith:[
		:msg |
		msg callerId: node name	;
				topic: aTopic name;
				md5Sum: aTopic md5Sum;
				type: aTopic type.
				
	].
	
	message sendTo: socket .
	
	
	stream := SocketStream on: socket.
	stream binary. 
	connectionMessage := PhaROSHSMessageHeader newSubscriberMessageFrom:stream.
	
	
	^ PhaROSExternalPublisherNode new xmlurl:anURL;  socket: socket; stream: stream; topic: aTopic; yourself.