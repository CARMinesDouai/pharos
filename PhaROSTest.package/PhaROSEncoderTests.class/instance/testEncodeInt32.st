tests
testEncodeInt32
	 
			| buffer |
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeInt32: 1.
			encoder flush.
			self assert: (buffer = #[ 1 0 0 0 ]).
		
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeInt32: 0.
			encoder flush.
			self assert: (buffer = #[ 0 0 0 0 ]).
			
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeInt32: -1.
			encoder flush.
			self assert: (buffer = #[255 255 255 255]).