tests
testNextEncodedFloat32
	" in the stream { float . float . float . float . 1 . 0}"
	decoder stream: (ReadStream on: #[0 0 128 63 0 0 128 191 0 0 0 0 0 0 64 64 1 0] ).
	self assert: (decoder nextEncodedFloat32= 1.0 ). 
	self assert: (decoder nextEncodedFloat32= -1.0 ).
	self assert: (decoder nextEncodedFloat32= 0.0 ).
	self assert: (decoder nextEncodedFloat32= 3.0 ).

	self should: [decoder nextEncodedFloat32] raise: Error.
	
