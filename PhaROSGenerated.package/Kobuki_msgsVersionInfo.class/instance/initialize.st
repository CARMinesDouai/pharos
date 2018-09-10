as yet unclassified
initialize
	super initialize.
	 self hardware: ''. 
	 self firmware: ''. 
	 self software: ''. 
	 self udid: OrderedCollection new . 
	 self features: 0. 
