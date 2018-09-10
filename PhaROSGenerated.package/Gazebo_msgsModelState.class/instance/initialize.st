as yet unclassified
initialize
	super initialize.
	 self model_name: ''. 
	 self pose: Geometry_msgsPose new. 
	 self twist: Geometry_msgsTwist new. 
	 self reference_frame: ''. 
