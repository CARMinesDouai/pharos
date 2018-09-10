tests
testEncodeInt64

	 
			| buffer |
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeInt64: 1.
			encoder flush.
			self assert: (buffer = #[ 1 0 0 0 0 0 0 0 ]).
		
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeInt64: 0.
			encoder flush.
			self assert: (buffer = #[ 0 0 0 0 0 0 0 0 ]).
			
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeInt64: -1.
			encoder flush.
			self assert: (buffer = #[255 255 255 255 255 255 255 255]).