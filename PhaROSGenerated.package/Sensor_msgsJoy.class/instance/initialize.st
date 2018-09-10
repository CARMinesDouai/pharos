as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self axes: OrderedCollection new . 
	 self buttons: OrderedCollection new . 
