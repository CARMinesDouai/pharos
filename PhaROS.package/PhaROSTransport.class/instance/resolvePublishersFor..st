publishing
resolvePublishersFor: aTopic
	| urls channel |
	
	urls := (master registerSubscriber: node name to: aTopic name with: aTopic type andCallerUri: self comm url) asSet.
	
	channel := aTopic subscribingChannelFor: node.
	
	^ urls collect: [ :url |
		(self isBlackListed: url ) ifFalse: [
		channel publishers detect: [ : p | p xmlurl = url ] ifNone: [ 
			| publisherNode |
			
			[
				publisherNode := self publisherNode: url to: aTopic .
				publisherNode channel: channel.
				channel subscribe:  publisherNode.
				publisherNode setup.
			] on: Error do: [: e | 
				self log: ' Error connecting to ', url.
				self log: e messageText.
				self blacklist: url.
				publisherNode := nil.
			]
		]
	]
	] thenSelect: #notNil.
	