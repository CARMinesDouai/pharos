as yet unclassified
initialize
	super initialize.
	 self name: ''. 
	 self type: ''. 
	 self domain: ''. 
	 self description: ''. 
	 self hostname: ''. 
	 self ipv4_addresses: OrderedCollection new . 
	 self ipv6_addresses: OrderedCollection new . 
	 self port: 0. 
	 self cookie: 0. 
	 self is_local: false. 
	 self our_own: false. 
	 self wide_area: false. 
	 self multicast: false. 
	 self cached: false. 
