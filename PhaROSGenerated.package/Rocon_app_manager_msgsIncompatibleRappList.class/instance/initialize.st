as yet unclassified
initialize
	super initialize.
	 self blacklisted_rapps: OrderedCollection new . 
	 self non_whitelisted_rapps: OrderedCollection new . 
	 self platform_incompatible_rapps: OrderedCollection new . 
	 self capabilities_incompatible_rapps: OrderedCollection new . 
