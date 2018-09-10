service
send: aMessage
	
	self subscribers do: [ : aNode |  self send: aMessage to: aNode. ].