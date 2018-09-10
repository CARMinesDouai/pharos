constructor
create: aSouledNodeClass named: name domain: aDomain tcpPort: aTcpPort xmlRpcPort: aXmlRpcPort soul: aBlock
	| node |
	master verifyName: name.
	node := aSouledNodeClass name: name domain: aDomain tcpPort: aTcpPort xmlRpcPort: aXmlRpcPort master: master soul: aBlock.
	master registerNode: node.

	^ node.
	