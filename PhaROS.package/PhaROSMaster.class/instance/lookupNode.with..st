API
lookupNode: nodeName with: aCallerId
	^ nodes at: nodeName ifAbsentPut:[
		PhaROSProxy url: (masterXmlRpc lookupNode: nodeName with: aCallerId).	
	 ].
	