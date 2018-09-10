encoding-private
byteArrayForSizeOf: aCollection
	|encodedSize sizeBytes|
	encodedSize := #[0 0 0 0].
	aCollection size asRoStByteArray reversed keysAndValuesDo: [:index :byte|
		encodedSize at: index put: byte
	].
	^encodedSize 
	