as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self radiation_type: 0. 
	 self field_of_view: 0.0. 
	 self min_range: 0.0. 
	 self max_range: 0.0. 
	 self range: 0.0. 
