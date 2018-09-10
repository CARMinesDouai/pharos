API-Data-Accessors
getTopicTypes: aCallerId
 | topics |
	topics := (self  invokeMethod: 'getTopicTypes' withArgs: {aCallerId} )  .
	^ topics 	inject: (Dictionary new) 
			 	into: [ 
					: dict : aTopicArray |  
					dict at: (aTopicArray at:1) put: (aTopicArray at:2); 
						 yourself .
				].
	