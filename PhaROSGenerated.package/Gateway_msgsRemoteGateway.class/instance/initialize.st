as yet unclassified
initialize
	super initialize.
	 self name: ''. 
	 self ip: ''. 
	 self firewall: false. 
	 self conn_stats: Gateway_msgsConnectionStatistics new. 
	 self public_interface: OrderedCollection new . 
	 self flipped_interface: OrderedCollection new . 
	 self pulled_interface: OrderedCollection new . 
