as yet unclassified
initialize
	super initialize.
	 self map_load_time:  PhaROSTimestamp now. 
	 self resolution: 0.0. 
	 self width: 0. 
	 self height: 0. 
	 self origin: Geometry_msgsPose new. 
