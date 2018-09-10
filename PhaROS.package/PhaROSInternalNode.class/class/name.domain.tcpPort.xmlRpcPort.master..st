as yet unclassified
name: aName domain: aDomain tcpPort: aTcpPort xmlRpcPort: aXmlRpcPort master: aMaster
	
	^ super new name: aName ;  
				transport: (PhaROSTransport domain: aDomain  xml: aXmlRpcPort tcp: aTcpPort master: aMaster);
				yourself.
	