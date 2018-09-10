as yet unclassified
requestTopic: aCallerId for:aTopic availableFor: anArrayOfProtocols
	(owner isRelatedWith: aTopic) ifTrue: [
		^ { 1 .  'Protocols' . {  'TCPROS'  .  owner domain  . owner publisher tcpPort }  }	
	].
	