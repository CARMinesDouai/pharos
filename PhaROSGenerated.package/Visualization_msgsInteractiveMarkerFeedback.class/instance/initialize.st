as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self client_id: ''. 
	 self marker_name: ''. 
	 self control_name: ''. 
	 self event_type: 0. 
	 self pose: Geometry_msgsPose new. 
	 self menu_entry_id: 0. 
	 self mouse_point: Geometry_msgsPoint new. 
	 self mouse_point_valid: false. 
