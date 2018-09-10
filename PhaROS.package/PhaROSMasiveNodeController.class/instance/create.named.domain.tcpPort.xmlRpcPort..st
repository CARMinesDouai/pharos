constructor
create: aNodeClass named: name domain: aDomain tcpPort: aTcpPort xmlRpcPort: aXmlRpcPort 
	| node |
	master verifyName: name.
	node := aNodeClass name: name domain: aDomain tcpPort: aTcpPort xmlRpcPort: aXmlRpcPort master: master .
	master registerNode: node.
	^ node.
	