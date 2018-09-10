serialize
unserialize: aByteArray
	self assert: aByteArray size = 1.
	^ self value: (aByteArray at: 1); yourself.