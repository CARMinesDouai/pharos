as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self magnetic_field: Geometry_msgsVector3 new. 
	 self magnetic_field_covariance:  (OrderedCollection new: 9). 
