message handling
sendAMessage: aMessageConfigurationBlock to: aNode
	| message |
	message := self newMessage.
	
	aMessageConfigurationBlock value: message value.
	^ self send: message to: aNode.
