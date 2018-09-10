tests
testEncodeBoolean
	 
			| buffer |
			buffer := ByteArray new: 1.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeBoolean: true.
			encoder flush.
			self assert: (buffer = #[1]).
			
			
			buffer := ByteArray new: 1.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeBoolean: false.
			encoder flush.
			self assert: (buffer = #[0])