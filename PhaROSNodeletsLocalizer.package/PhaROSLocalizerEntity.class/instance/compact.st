as yet unclassified
compact
	| new | 
	new := Set new. 
	
	measures do: [ : measure | 
		new detect: [ : m2 | 
			measure position approximated: m2 position  threshold: PhaROSLocalizerNodelet measureThreshold 
		] ifNone: [new add: measure ].
	].
	measures := new.
	^ new size.