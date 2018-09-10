as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self height: 0. 
	 self width: 0. 
	 self encoding: ''. 
	 self is_bigendian: 0. 
	 self step: 0. 
	 self data: OrderedCollection new . 
