as yet unclassified
initialize
	super initialize.
	 self server_id: ''. 
	 self seq_num: 0. 
	 self markers: OrderedCollection new . 
