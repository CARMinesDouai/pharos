API-Parameter-Server
parameter: aName initialized: aValue for: aCallerId subscribingTo: anXMLRpcUrl
	| parameter |
	 parameter := parameters at: aName ifAbsentPut: [
		| build | 
		build := (masterXmlRpc hasParam: aName for: aCallerId ) ifTrue:[
			PhaROSParameter named: aName initialized: (masterXmlRpc getParam: aName for: aCallerId) .
		] ifFalse: [ 
			masterXmlRpc setParam: aName with: aValue for: aCallerId. 
			PhaROSParameter named: aName initialized: aValue .
		 ].
		masterXmlRpc subscribeParam: aName callingBack: anXMLRpcUrl for: aCallerId. 
		build
	 ].

	(parameter checkIs: aValue) ifFalse: [
		self error:'The parameter is not of type ', aValue class asString. 	
	].
	^ parameter.
	