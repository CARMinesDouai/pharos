tests
testNextEncodedUint64
      decoder stream: (ReadStream on: #[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255] ).
	
	 self assert: (decoder nextEncodedUint64 = 1). 
	 self assert: (decoder nextEncodedUint64 = 0). 
	 self assert: (decoder nextEncodedUint64 = 18446744073709551615). 
	 self should: [decoder nextEncodedUint64] raise: Error.