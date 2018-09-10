as yet unclassified
checkFrame: aFrame
	self checkStamp: aFrame.
	aFrame isBeingBroadcasted ifFalse: [
		PhaROSTFError signal: aFrame name, ' is not being broadcasted. '.	
	].

