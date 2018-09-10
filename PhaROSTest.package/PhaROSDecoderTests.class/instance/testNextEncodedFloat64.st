tests
testNextEncodedFloat64
	
	" in the stream { float . float . float . float . 1 . 0 . 0 . 0}"
	 decoder stream: (ReadStream on: #[0 0 0 0 0 0 240 63 0 0 0 0 0 0 240 191 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 64 1 0 0 0 ] ).
	
	
	self assert: (decoder nextEncodedFloat64= 1.0 ). 
	self assert: (decoder nextEncodedFloat64= -1.0 ).
	self assert: (decoder nextEncodedFloat64= 0.0 ).
	self assert: (decoder nextEncodedFloat64= 3.0 ).

	self should: [decoder nextEncodedFloat64] raise: Error.
	
