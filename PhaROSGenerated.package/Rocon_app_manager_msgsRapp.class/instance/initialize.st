as yet unclassified
initialize
	super initialize.
	 self name: ''. 
	 self display_name: ''. 
	 self description: ''. 
	 self compatibility: ''. 
	 self status: ''. 
	 self implementations: OrderedCollection new . 
	 self preferred: ''. 
	 self icon: Rocon_std_msgsIcon new. 
	 self public_interface: OrderedCollection new . 
	 self public_parameters: OrderedCollection new . 
