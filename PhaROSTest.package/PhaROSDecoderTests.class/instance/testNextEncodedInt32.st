tests
testNextEncodedInt32
	" in the stream { int32 . int32 . int32 . 1 . 0 . 0}"
	 decoder stream: (ReadStream on: #[ 1 0 0 0 0 0 0 0 255 255 255 255 1 0 0 ] ).

	 self assert: (decoder nextEncodedInt32 = 1). 
	 self assert: (decoder nextEncodedInt32= 0). 
	 self assert: (decoder nextEncodedInt32= -1). 

	 self should: [decoder nextEncodedInt32] raise: Error.
