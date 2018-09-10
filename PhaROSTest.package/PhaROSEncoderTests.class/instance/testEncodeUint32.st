tests
testEncodeUint32
	 
			| buffer |
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeUint32: 1.
			encoder flush.
			self assert: (buffer = #[ 1 0 0 0 ]).
		
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeUint32: 0.
			encoder flush.
			self assert: (buffer = #[ 0 0 0 0 ]).
			
			
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			
			self should: [
				encoder encodeUint32: 9999999999.
			] raise: Error.
			

			
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			self should: [
				encoder encodeUint32: -1.
			] raise: Error.

