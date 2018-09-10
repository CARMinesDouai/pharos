as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self height: 0. 
	 self width: 0. 
	 self fields: OrderedCollection new . 
	 self is_bigendian: false. 
	 self point_step: 0. 
	 self row_step: 0. 
	 self data: OrderedCollection new . 
	 self is_dense: false. 
