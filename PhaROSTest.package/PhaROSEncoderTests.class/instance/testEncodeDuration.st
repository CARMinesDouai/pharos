tests
testEncodeDuration
	 
			| buffer |
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeDuration: (Duration seconds: 0).
			encoder flush.
			self assert: (buffer = #[0 0 0 0 0 0 0 0]).
		
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodeDuration: (Duration seconds: 100000).
			encoder flush.
			self assert: (buffer = #[160 134 1 0 0 0 0 0]).
		