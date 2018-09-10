tests
testEncodeUint16
	 
			| buffer |
			buffer := ByteArray new: 2.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeUint16: 1.
			encoder flush.
			self assert: (buffer = #[1 0]).
		
			buffer := ByteArray new: 2.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeUint16: 0.
			encoder flush.
			self assert: (buffer = #[0 0]).
		
			buffer := ByteArray new: 2.
			encoder stream: (WriteStream on: buffer).
			
			self should: [
				encoder encodeUint16: -1.
			] raise: Error.