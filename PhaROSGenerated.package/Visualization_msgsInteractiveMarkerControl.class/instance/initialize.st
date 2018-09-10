as yet unclassified
initialize
	super initialize.
	 self name: ''. 
	 self orientation: Geometry_msgsQuaternion new. 
	 self orientation_mode: 0. 
	 self interaction_mode: 0. 
	 self always_visible: false. 
	 self markers: OrderedCollection new . 
	 self independent_marker_orientation: false. 
	 self description: ''. 
