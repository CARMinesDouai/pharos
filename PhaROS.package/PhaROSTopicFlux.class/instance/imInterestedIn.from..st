dispatching
imInterestedIn: aMessage from: aChannel
	^ condition cull: aMessage cull: aChannel.