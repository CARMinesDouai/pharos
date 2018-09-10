tests
testEncodeByte
	 
			| buffer |
			buffer := ByteArray new: 1.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeByte: 0.
			encoder flush.
			self assert: (buffer = #[0]).
		