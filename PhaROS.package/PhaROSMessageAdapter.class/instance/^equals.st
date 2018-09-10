as yet unclassified
= anAdaption
	^ self == anAdaption or: [
	(anAdaption isKindOf: PhaROSMessageAdapter) and:[ 
		chainOfAdaption allSatisfy: [ :a | anAdaption chainOfAdaption includes: a ].	
	] ].