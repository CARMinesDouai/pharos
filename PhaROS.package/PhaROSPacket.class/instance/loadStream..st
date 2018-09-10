as yet unclassified
loadStream: aStream 
	| aDecoder  size |

	aDecoder := PhaROSDecoder on: aStream .

	size := self decodePacketSizeFrom: aDecoder.
 	(type isAPossibleSize: size ) ifFalse: [
		PhaROSUnexpextedValue signal:' Unexpected Value'.	
	].
	size > 20000000 ifTrue: [
		"too long, maybe is a problem in buffer. "	
		aStream resetBuffers.
		self error: 'Warning. trying to load ', size asString, ' bytes'.
	].
	value := type decode: aDecoder.


