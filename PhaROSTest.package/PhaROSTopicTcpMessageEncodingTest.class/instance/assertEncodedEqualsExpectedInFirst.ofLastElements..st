testing
assertEncodedEqualsExpectedInFirst: netSize ofLastElements: rawSize
	|encoded expected|
	encoded := ((PhaROSHSMessageEncoder encode: message) last: rawSize) first: netSize.
	expected := (self expectedByteArray last:  rawSize) first: netSize.
	self assert: encoded = expected