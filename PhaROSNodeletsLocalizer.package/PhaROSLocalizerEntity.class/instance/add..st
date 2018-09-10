as yet unclassified
add: aMeasure 

	
	adding ifTrue: [
		measures add: aMeasure pose. 
		measures removeAll: (measures select: [ : msr | (self center position - msr  position) module2d > 0.3 ]).
		self compact > 10 ifTrue: [
			adding := false.
		].
		m := m +1.
		
	].