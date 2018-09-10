as yet unclassified
initialize
	super initialize.
	 self target: Geometry_msgsPointStamped new. 
	 self pointing_axis: Geometry_msgsVector3 new. 
	 self pointing_frame: ''. 
	 self min_duration:  Duration seconds: 0. 
	 self max_velocity: 0.0. 
