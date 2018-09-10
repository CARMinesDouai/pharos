as yet unclassified
initialize
	super initialize.
	 self name: ''. 
	 self connected: false. 
	 self ip: ''. 
	 self hub_names: OrderedCollection new . 
	 self hub_uris: OrderedCollection new . 
	 self firewall: false. 
	 self public_watchlist: OrderedCollection new . 
	 self public_interface: OrderedCollection new . 
	 self flipped_connections: OrderedCollection new . 
	 self flip_watchlist: OrderedCollection new . 
	 self flipped_in_connections: OrderedCollection new . 
	 self pull_watchlist: OrderedCollection new . 
	 self pulled_connections: OrderedCollection new . 
