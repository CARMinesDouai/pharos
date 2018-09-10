as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self accel: Geometry_msgsAccelWithCovariance new. 
