as yet unclassified
initialize
	super initialize.
	 self transform: Geometry_msgsTransformStamped new. 
	 self error: Tf2_msgsTF2Error new. 
