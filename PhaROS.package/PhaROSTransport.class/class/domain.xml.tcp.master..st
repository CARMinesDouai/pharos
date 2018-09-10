as yet unclassified
domain: anIP xml: aPort tcp: otherPort master: aMaster
	| tp |
	tp := self new .
	tp communication: (PhaROSCommunicationLayer xmlAt: aPort tcpAt: otherPort of: anIP delegatingOn: tp) asStickyReference; master: aMaster . 
	^ tp
	