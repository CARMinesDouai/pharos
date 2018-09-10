as yet unclassified
check: aLocalizerMeasure 
	
	self events do: [ : e | [ e apply: aLocalizerMeasure ] on: Error do: [ : er | self log: er messageText ] ].