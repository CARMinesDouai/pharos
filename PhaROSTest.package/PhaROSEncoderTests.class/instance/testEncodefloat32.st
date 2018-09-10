tests
testEncodefloat32
	 
			| buffer |
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodefloat32: 1.0.
			encoder flush.
			self assert: (buffer = #[0 0 128 63]).
		
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodefloat32: -1.0.
			encoder flush.
			self assert: (buffer = #[0 0 128 191]).
		
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodefloat32: 0.0.
			encoder flush.
			self assert: (buffer = #[0 0 0 0]).
			
			buffer := ByteArray new: 4.
			encoder stream: (WriteStream on: buffer).
			
			encoder encodefloat32: 3.
			encoder flush.
			self assert: (buffer = #[0 0 64 64]).
		