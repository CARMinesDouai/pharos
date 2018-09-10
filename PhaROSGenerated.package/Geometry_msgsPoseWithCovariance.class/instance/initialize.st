as yet unclassified
initialize
	super initialize.
	 self pose: Geometry_msgsPose new. 
	 self covariance:  (OrderedCollection new: 36). 
