tests
testNextEncodedUint32
       decoder stream: (ReadStream on: #[1 0 0 0 0 0 0 0 255 255 255 255 ] ).
	
	 self assert: (decoder nextEncodedUint32 = 1). 
	 self assert: (decoder nextEncodedUint32 = 0). 
	 self assert: (decoder nextEncodedUint32 = 4294967295). 
			
	 self should: [decoder nextEncodedUint32] raise: Error.