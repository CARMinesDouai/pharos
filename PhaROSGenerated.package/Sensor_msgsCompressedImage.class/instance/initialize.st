as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self format: ''. 
	 self data: OrderedCollection new . 
