tests
testEncodeBytes
	 
			| buffer |
			buffer := ByteArray new: 2.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeBytes: #[ 1 0 ].
			encoder flush.
			self assert: (buffer = #[ 1 0 ]).
		