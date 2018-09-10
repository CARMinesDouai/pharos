as yet unclassified
initialize
	super initialize.
	 self name: ''. 
	 self rapp: ''. 
	 self description: ''. 
	 self icon: Rocon_std_msgsIcon new. 
	 self remappings: OrderedCollection new . 
	 self parameters: OrderedCollection new . 
