as yet unclassified
requestTopic: aCallerId for:aTopic availableFor: anArrayOfProtocols

	^ (transport isPublisherOf: aTopic) ifTrue: [
		
		{ 1 .  'Protocols' . {  'TCPROS'  .  ip .  tcp }  }	
	] ifFalse: [
		
		{} 
	].
	