publishing
processServiceRequest: aServiceID for: aCallerID with: aSocketStream beingPersistent: isPersistent forProbe: isProbe
	| service handshakeMessage request response  |
	
	isPersistent ifTrue: [ 
		aSocketStream  close. 
		self error: 'Persistent connection is not already developed'.	
	 ].
	
	service := master lookupServiceExposer: aServiceID.
	
	
	handshakeMessage := PhaROSHSMessageHeader newServiceWith:  [ :msg |
		msg callerId: service owner name.
		msg service: service name.
		msg md5Sum: service md5Sum.
		msg type: service type typeName.
		msg requestType: service requestType typeName.
		msg responseType: service responseType typeName.
	].

	aSocketStream nextPutAll: (PhaROSHSMessageEncoder encode:handshakeMessage) ; flush.


	isProbe ifFalse: [ 
		request := service requestType newPacket.
		
		service requestType isZeroSized ifFalse: [
			request loadStream: aSocketStream.
		].
	
		response :=  service responseType newPacket.
		service process: request value with: response value.
		
		[aSocketStream nextPutAll: ({1}, response dump) ; flush ; close. ] shootIt.
	 ] ifTrue: [ aSocketStream close ] .
	
	