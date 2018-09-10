as yet unclassified
initialize
	super initialize.
	 self server_id: ''. 
	 self seq_num: 0. 
	 self type: 0. 
	 self markers: OrderedCollection new . 
	 self poses: OrderedCollection new . 
	 self erases: OrderedCollection new . 
