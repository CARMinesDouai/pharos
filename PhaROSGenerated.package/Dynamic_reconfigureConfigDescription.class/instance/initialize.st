as yet unclassified
initialize
	super initialize.
	 self groups: OrderedCollection new . 
	 self max: Dynamic_reconfigureConfig new. 
	 self min: Dynamic_reconfigureConfig new. 
	 self dflt: Dynamic_reconfigureConfig new. 
