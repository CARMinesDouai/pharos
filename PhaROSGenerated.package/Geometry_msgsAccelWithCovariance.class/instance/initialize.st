as yet unclassified
initialize
	super initialize.
	 self accel: Geometry_msgsAccel new. 
	 self covariance:  (OrderedCollection new: 36). 
