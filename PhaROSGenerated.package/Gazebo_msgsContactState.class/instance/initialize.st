as yet unclassified
initialize
	super initialize.
	 self info: ''. 
	 self collision1_name: ''. 
	 self collision2_name: ''. 
	 self wrenches: OrderedCollection new . 
	 self total_wrench: Geometry_msgsWrench new. 
	 self contact_positions: OrderedCollection new . 
	 self contact_normals: OrderedCollection new . 
	 self depths: OrderedCollection new . 
