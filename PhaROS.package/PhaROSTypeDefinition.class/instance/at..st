accessing
at: aName
	^ definition detect: [ : def | def name = aName ]