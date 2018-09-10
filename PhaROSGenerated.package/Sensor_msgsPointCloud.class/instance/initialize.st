as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self points: OrderedCollection new . 
	 self channels: OrderedCollection new . 
