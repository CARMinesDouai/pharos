stdio
askUserFor: aLegend
	self log: aLegend.
	^self stdin upTo: Character lf