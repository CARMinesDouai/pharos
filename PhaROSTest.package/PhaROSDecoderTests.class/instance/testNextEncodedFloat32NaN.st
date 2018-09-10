tests
testNextEncodedFloat32NaN
	" in the stream { float . float . nan . float . 1 . 0}
	A nan value is 0 0 192 127"
	
	decoder stream: (ReadStream on: #[0 0 128 63 0 0 128 191 0 0 192 127 0 0 64 64 1 0] ).
	self assert: (decoder nextEncodedFloat32= 1.0 ). 
	self assert: (decoder nextEncodedFloat32= -1.0 ).
	self assert: (decoder nextEncodedFloat32 isNaN ).
	self assert: (decoder nextEncodedFloat32= 3.0 ).

	self should: [decoder nextEncodedFloat32] raise: Error.
	
