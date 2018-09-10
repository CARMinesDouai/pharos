tests
testEncodeString
	 
			| buffer |
			buffer := ByteArray new: 10.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeString: 'STRING'.
			encoder flush.
			self assert: (buffer = #[6 0 0 0 83 84 82 73 78 71]).
		