as yet unclassified
initialize
	super initialize.
	 self twist: Geometry_msgsTwist new. 
	 self covariance:  (OrderedCollection new: 36). 
