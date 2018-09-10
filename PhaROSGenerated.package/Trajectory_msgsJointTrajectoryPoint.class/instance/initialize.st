as yet unclassified
initialize
	super initialize.
	 self positions: OrderedCollection new . 
	 self velocities: OrderedCollection new . 
	 self accelerations: OrderedCollection new . 
	 self effort: OrderedCollection new . 
	 self time_from_start:  Duration seconds: 0. 
