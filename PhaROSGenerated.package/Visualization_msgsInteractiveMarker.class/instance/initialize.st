as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self pose: Geometry_msgsPose new. 
	 self name: ''. 
	 self description: ''. 
	 self scale: 0.0. 
	 self menu_entries: OrderedCollection new . 
	 self controls: OrderedCollection new . 
