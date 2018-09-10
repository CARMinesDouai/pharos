testing
testHeaderDecoding
	| decodedMessage |
	decodedMessage := PhaROSHSMessageHeader newPublisherMessageFrom: self messageByteArray readStream.
	self assert: expectedMessage header = decodedMessage header