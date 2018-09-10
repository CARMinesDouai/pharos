as yet unclassified
load: aByteArray 
	| aDecoder  size |

	aByteArray size < 4 ifTrue: [
		PhaROSUnexpextedValue signal:' Unexpected Value'.		
	].

	^ self loadStream: (ReadStream on: aByteArray).
