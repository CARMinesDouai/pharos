as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self child_frame_id: ''. 
	 self pose: Geometry_msgsPoseWithCovariance new. 
	 self twist: Geometry_msgsTwistWithCovariance new. 
