as yet unclassified
initialize
	super initialize.
	 self damping: OrderedCollection new . 
	 self hiStop: OrderedCollection new . 
	 self loStop: OrderedCollection new . 
	 self erp: OrderedCollection new . 
	 self cfm: OrderedCollection new . 
	 self stop_erp: OrderedCollection new . 
	 self stop_cfm: OrderedCollection new . 
	 self fudge_factor: OrderedCollection new . 
	 self fmax: OrderedCollection new . 
	 self vel: OrderedCollection new . 
