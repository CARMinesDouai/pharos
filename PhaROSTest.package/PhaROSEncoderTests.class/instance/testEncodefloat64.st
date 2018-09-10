tests
testEncodefloat64
	 
			| buffer |
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodefloat64: 1.0.
			encoder flush.
			self assert: (buffer = #[0 0 0 0 0 0 240 63]).
		
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodefloat64: -1.0.
			encoder flush.
			self assert: (buffer = #[0 0 0 0 0 0 240 191]).
		
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodefloat64: 0.0.
			encoder flush.
			self assert: (buffer = #[0 0 0 0 0 0 0 0]).
			
			buffer := ByteArray new: 8.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodefloat64: 3.
			encoder flush.
			self assert: (buffer = #[0 0 0 0 0 0 8 64]).
		