as yet unclassified
send: aMessage to: aNode
	[[
		aNode receive: aMessage from: self
	] on: ConnectionTimedOut do: [ 
	 	self subscribers remove: aNode.
	] ] on: Error do: [ :e | self halt ].