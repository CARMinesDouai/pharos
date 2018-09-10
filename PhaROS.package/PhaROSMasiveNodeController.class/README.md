PhaROSMasiveNodeController approach consist in subclass of PhaROSNode for each needed functionality, as the main idea of the ROS system, in order to do this, Masive controller expose some Node building methods, all of these methods receive as first parameter the class to instantiate, also name and domain of the node. The rest of the parameters change in terms of specific building:

	+ create: aNodeClass named: name domain: aDomain tcpPort: aTcpPort xmlRpcPort: aXmlRpcPort  --- Spawn any kind of node for publishing and subscribing
	+ create: aNodeClass named: name domain: aDomain tcpPort: aTcpPort xmlRpcPort: aXmlRpcPort delegate: aReceiverDelegateOrBlock  --- Spawn any kind of node for publishing and subscribing with a specific delegate
	+ create: aSouledNodeClass named: name domain: aDomain tcpPort: aTcpPort xmlRpcPort: aXmlRpcPort soul: aBlock  --- Spawn a node with soul block (PhaROSBlockNode or subclass) for publish and subscribing
	+ create: aSouledNodeClass named: name domain: aDomain tcpPort: aTcpPort xmlRpcPort: aXmlRpcPort soul: aBlock delegate: aReceiverDelegateOrBlock --- Spawn a node with soul block (PhaROSBlockNode or subclass) for publish and subscribing  with a specific delegate
	+ create: aNodeClass named: name domain: aDomain xmlRpcPort: aXmlRpcPort  --- Spawn any kind of node for subscribing
	+ create: aSouledNodeClass named: name domain: aDomain xmlRpcPort: aXmlRpcPort delegate: aReceiverDelegateOrBlock --- Spawn a node with soul block (PhaROSBlockNode or subclass)  for subscribing.
	