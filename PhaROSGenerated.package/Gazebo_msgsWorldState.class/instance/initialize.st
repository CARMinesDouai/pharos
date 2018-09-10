as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self name: OrderedCollection new . 
	 self pose: OrderedCollection new . 
	 self twist: OrderedCollection new . 
	 self wrench: OrderedCollection new . 
