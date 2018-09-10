tests
testNextEncodedUint8
	 decoder stream: (ReadStream on: #[ 0 1 ] ).
	 self assert: (decoder nextEncodedUint8= 0). 
	 self assert: (decoder nextEncodedUint8= 1).

