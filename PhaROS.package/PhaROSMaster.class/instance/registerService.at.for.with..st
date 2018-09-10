API-Registration
registerService: aService at: aROSRPCUrl for: aXMLRPCUrl with: aCallerId 
	serviceExposers at: aService name ifPresent: [  self error: 'Unexpected double service register' ].
	
	( masterXmlRpc registerService: aService name at: aROSRPCUrl for: aXMLRPCUrl with: aCallerId) = 1 ifTrue:[
		serviceExposers at: aService name put: aService.
		^ aService	
	 ].
	self error: 'Error registering service'.
