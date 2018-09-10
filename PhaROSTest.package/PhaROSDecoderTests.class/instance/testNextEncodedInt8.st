tests
testNextEncodedInt8
	decoder stream: (ReadStream on: #[ 1 2 3 4] ).
	self assert: (decoder nextEncodedInt8= 1). 
	self assert: (decoder nextEncodedInt8= 2).
	self assert: (decoder nextEncodedInt8= 3).
	self assert: (decoder nextEncodedInt8= 4).
	
	 self should: [decoder nextEncodedInt8] raise: Error.