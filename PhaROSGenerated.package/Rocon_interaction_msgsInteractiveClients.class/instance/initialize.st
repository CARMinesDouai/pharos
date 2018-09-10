as yet unclassified
initialize
	super initialize.
	 self idle_clients: OrderedCollection new . 
	 self running_clients: OrderedCollection new . 
