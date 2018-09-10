tests
testEncodeUint8
	 
			| buffer |
			buffer := ByteArray new: 1.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeUint8: 1.
			encoder flush.
			self assert: (buffer = #[ 1 ]).
		
			buffer := ByteArray new: 1.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeUint8: 0.
			encoder flush.
			self assert: (buffer = #[ 0 ]).
			
			
			buffer := ByteArray new: 1.
			encoder stream: (WriteStream on: buffer).
			
			self should: [
				encoder encodeUint8: -1.
			] raise: Error.	