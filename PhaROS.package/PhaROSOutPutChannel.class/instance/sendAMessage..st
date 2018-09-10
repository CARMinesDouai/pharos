message handling
sendAMessage: aMessageConfigurationBlock
	| message |
	message := self newMessage.
	subscribers size > 0 ifTrue: [
		aMessageConfigurationBlock value: message value.
		^ self send: message.
	]
	
