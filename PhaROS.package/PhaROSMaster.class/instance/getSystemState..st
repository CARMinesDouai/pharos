API-Data-Accessors
getSystemState: aCallerId
	^PhaROSSystemState from: (masterXmlRpc getSystemState: aCallerId).