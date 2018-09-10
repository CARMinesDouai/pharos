accessing
installHandleNode: aNode
	node ifNotNil:[
		self error: 'This node is already installed! ' ].
	node := aNode.