as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self name: OrderedCollection new . 
	 self position: OrderedCollection new . 
	 self velocity: OrderedCollection new . 
	 self effort: OrderedCollection new . 
