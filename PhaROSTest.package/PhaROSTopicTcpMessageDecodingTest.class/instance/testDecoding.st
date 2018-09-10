testing
testDecoding
	| decodedMessage |
	
	decodedMessage :=PhaROSHSMessageHeader newPublisherMessageFrom: self messageByteArray readStream.
	self assert: expectedMessage = decodedMessage
	