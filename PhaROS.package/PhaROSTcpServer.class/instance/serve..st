server
serve: aSocket
	| stream message |
	
	stream := SocketStream on: aSocket.
	stream binary.
	message := PhaROSHSMessageDecoder decodeUnknownMessageHeader:  stream.
	PhaROSHeaderVerifier new verify: message. 
	self owner manageIncomingConnection: message becomeKnown with: stream.
	
	