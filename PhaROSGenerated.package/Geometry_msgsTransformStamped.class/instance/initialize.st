as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self child_frame_id: ''. 
	 self transform: Geometry_msgsTransform new. 
