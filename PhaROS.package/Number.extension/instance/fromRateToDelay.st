*PhaROS
fromRateToDelay 
	| milliseconds |
	milliseconds := self = 0 ifFalse: [
		(1000 / self)
	] ifTrue: [ 
		0.0
	].

	^ Delay forMilliseconds: milliseconds.