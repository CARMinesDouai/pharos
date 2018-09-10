tests
testNextEncodedUint16
	 decoder stream: (ReadStream on: #[1 0 0 0 255 255] ).
	
	 self assert: (decoder nextEncodedUint16 = 1). 
	 self assert: (decoder nextEncodedUint16 = 0). 
	 self assert: (decoder nextEncodedUint16 = 65535). 
	 self should: [decoder nextEncodedUint16] raise: Error.