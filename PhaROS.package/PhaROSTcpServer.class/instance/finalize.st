server
finalize 
	PhaROSTcpServer stop: self.
	server ifNotNil: [server  stop].
	server := nil.