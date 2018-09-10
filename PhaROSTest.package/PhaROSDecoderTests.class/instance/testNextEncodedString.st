tests
testNextEncodedString
	" in the stream { string([size|content]) . 6 0 0 0 }"
	 decoder stream: (ReadStream on: #[6 0 0 0 83 84 82 73 78 71] ).
	 self assert: (decoder nextEncodedString= 'STRING'). 
	