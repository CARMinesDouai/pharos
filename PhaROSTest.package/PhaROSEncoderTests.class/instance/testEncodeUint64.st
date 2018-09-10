tests
testEncodeUint64
		 	| buffer |
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeUint64: 1.
			encoder flush.
			self assert: (buffer = #[ 1 0 0 0 0 0 0 0 ]).
		
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeUint64: 0.
			encoder flush.
			self assert: (buffer = #[ 0 0 0 0 0 0 0 0 ]).
			
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			self should: [
				encoder encodeUint64: -1.	
			] raise: Error.
			
