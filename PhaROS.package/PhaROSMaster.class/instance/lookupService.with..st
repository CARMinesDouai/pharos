API
lookupService: serviceName with: aCallerId
	
	^ services at: serviceName ifAbsentPut: [
		| serviceUriString |
		(serviceExposers includesKey: serviceName ) ifTrue: [ 
			serviceExposers at: serviceName 
		 ] ifFalse: [
			serviceUriString := masterXmlRpc lookupService: serviceName with: aCallerId.
			PhaROSServiceProxy serviceName: serviceName uriFrom: serviceUriString.
		]
	].