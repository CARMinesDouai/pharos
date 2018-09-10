as yet unclassified
= anOtherPacket
	^( anOtherPacket isKindOf: PhaROSPacket )and: [ 
		value = anOtherPacket value.	
	]