as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self x: 0. 
	 self y: 0. 
	 self width: 0. 
	 self height: 0. 
	 self data: OrderedCollection new . 
