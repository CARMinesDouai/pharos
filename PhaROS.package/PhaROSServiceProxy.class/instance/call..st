calling
call: aBlock

	| socketStr messageBytes response request |

	request := requestType newPacket.
	
	aBlock value: request value. 
	
	messageBytes := (PhaROSHSMessageEncoder encode: (self messageHeader)), request dump.
	
	socketStr := SocketStream openConnectionToHostNamed: self hostName port: self port.
	^
	[ 
		|  header stream |

		socketStr sendCommand: messageBytes.
		response := responseType newPacket.
		stream := socketStr upToEnd asByteArray readStream.
		socketStr close.
		header := PhaROSHSMessageHeader newServiceClientMessageFrom: stream.
		
		header persistent ifTrue: [  self error:' Persistent service is not implemented yet'   ].
		
		
		self flag: #thisStreamNextIsABug. "BUG"
		stream next.
		
		response loadStream: stream.
		response value.
	] shootIt asResult.

