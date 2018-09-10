utility
isTurtleAt: aCoordArray forPeekString: aPeekString
	| aPeekResult |
	aPeekResult := resource build: 5 associationsFrom: (resource tokenizeString: aPeekString).
	
	self assert: aPeekResult size = aCoordArray size.

	self assert: (aPeekResult at: 1 ) key = 'x:'.
	self assert: (Float readFrom: ((aPeekResult at: 1 ) value)) = (aCoordArray at: 1).

	self assert: (aPeekResult at: 2 ) key = 'y:'.
	self assert: (Float readFrom: ((aPeekResult at: 2 ) value)) = (aCoordArray at: 2).

	self assert: (aPeekResult at: 3 ) key = 'theta:'.
	self assert: (Float readFrom: ((aPeekResult at:  3) value)) = (aCoordArray at: 3).
		
	self assert: (aPeekResult at: 4 ) key = 'linear_velocity:'.
	self assert: (Float readFrom: ((aPeekResult at: 4) value)) = (aCoordArray at: 4).
	
	self assert: (aPeekResult at: 5 ) key = 'angular_velocity:'.
	self assert: (Float readFrom: ((aPeekResult at: 5 ) value)) = (aCoordArray at: 5).
