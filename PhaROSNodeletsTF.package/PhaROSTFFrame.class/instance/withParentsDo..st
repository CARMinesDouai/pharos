accessing
withParentsDo: aBlock 
	|  aux  |
	
	aux := self parent.
	
	[ aux notNil ] whileTrue: [ 
		aBlock value: aux.
		aux := aux parent. 
	 ] .
