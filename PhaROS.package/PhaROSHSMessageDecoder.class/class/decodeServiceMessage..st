decoding
decodeServiceMessage: aStream
	| message |
	message :=  self decode: aStream using: PhaROSHSMessageHeader newService.
	self assert: (message header includesKey: #error) not.
	^ message