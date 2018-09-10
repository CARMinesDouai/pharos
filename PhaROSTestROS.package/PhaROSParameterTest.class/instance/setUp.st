as yet unclassified
setUp 

	super setUp.	
	self startUpTurtle.
	
	node := PhaROSTestNode  name: '/TestNode' domain: '127.0.0.1' tcpPort: 92837 xmlRpcPort:  634987 master: master.
	master registerNode: node.