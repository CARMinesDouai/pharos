dispatching
dispatch: aMessage for: aChannel
	topicHandle at: aChannel  ifPresent: [ : callbackSet | 
		callbackSet do: [ : callback | callback receive: aMessage value from: aChannel]. 
	] ifAbsent: [
		self log: ' Receiving packets from ', aChannel topic name, ' with out packet handle'.
	]