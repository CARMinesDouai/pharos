tests
testNextEncodedByte
	 decoder stream: (ReadStream on: #[ 0 1 ] ).
	 self assert: (decoder nextEncodedByte= 0). 
	 self assert: (decoder nextEncodedByte= 1).
