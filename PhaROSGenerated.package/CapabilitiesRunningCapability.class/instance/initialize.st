as yet unclassified
initialize
	super initialize.
	 self capability: CapabilitiesCapability new. 
	 self dependent_capabilities: OrderedCollection new . 
	 self started_by: ''. 
	 self pid: 0. 
