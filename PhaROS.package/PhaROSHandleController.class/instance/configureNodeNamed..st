initialize-release
configureNodeNamed: nodeName

	| handle |
	
	"always a / in front"
	"never a / at the end"
	handleNamespace := OSEnvironment default at: 'ROS_NAMESPACE' ifAbsent: [  '' ].
	
	nodeName first = $/ 
		ifTrue: [ handleName := handleNamespace, nodeName ] 
		ifFalse: [ handleName := handleNamespace, '/', nodeName ].
	
	handle := (PhaROSMasiveNodeController for: master) 
				create: PhaROSNodeHandle  
				named: self handleName 
				domain: self domain 
				tcpPort:  self tcpPort 
				xmlRpcPort: self xmlRpcPort .
				
	self installHandleNode: handle
	