name resolution
resolveName: aName
	(aName first = $/) ifTrue: [ ^ aName ].
	^ self namespace,'/',aName