*PhaROS
receive: aMessage from: aChannel  at: aStamp
	^ self cull: aMessage cull: aChannel cull: aStamp.