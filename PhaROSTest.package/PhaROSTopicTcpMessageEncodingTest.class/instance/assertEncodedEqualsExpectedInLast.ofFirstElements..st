testing
assertEncodedEqualsExpectedInLast: netSize ofFirstElements: rawSize
	|encoded expected|
	encoded := ((PhaROSHSMessageEncoder encode: message) first: rawSize) last: netSize.
	expected := (self expectedByteArray first:  rawSize) last: netSize.
	self assert: encoded = expected