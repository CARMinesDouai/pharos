tests
testEncodeTime
	| buffer |

	buffer := ByteArray new: 8.
	encoder stream: (WriteStream on: buffer).
			
	encoder encodeTime:  PhaROSTimestamp new.
	encoder flush.
	self assert: (buffer = #[0 0 0 0 0 0 0 0]).
		
	buffer := ByteArray new: 8.
	encoder stream: (WriteStream on: buffer).
		
	encoder encodeTime:  (PhaROSTimestamp new + (Duration seconds: 99999999)).
	encoder flush.
	self assert: (buffer = #[255 224 245 5 0 0 0 0]).
		