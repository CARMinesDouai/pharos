as yet unclassified
initialize
	super initialize.
	 self name: ''. 
	 self command: ''. 
	 self compatibility: ''. 
	 self group: ''. 
	 self description: ''. 
	 self icon: Rocon_std_msgsIcon new. 
	 self namespace: ''. 
	 self remappings: OrderedCollection new . 
	 self parameters: ''. 
	 self max: 0. 
	 self bringup_pairing: false. 
	 self teardown_pairing: false. 
	 self required_pairings: OrderedCollection new . 
	 self hash: 0. 
