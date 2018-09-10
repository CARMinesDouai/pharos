events
onSubscribe: aNode to: aChannel
	subscribingHandle at: aChannel topic name ifPresent: [: handle | handle cull: aNode cull: aChannel ].