tests
testNextEncodedInt16
	" in stream { int16 . int16. int16.  1}".
	
	 decoder stream: (ReadStream on: #[1 0 0 0 255 255 1] ).
	
	 self assert: (decoder nextEncodedInt16= 1). 
	 self assert: (decoder nextEncodedInt16= 0). 
	 self assert: (decoder nextEncodedInt16= -1). 

	self should: [decoder nextEncodedInt16] raise: Error.
