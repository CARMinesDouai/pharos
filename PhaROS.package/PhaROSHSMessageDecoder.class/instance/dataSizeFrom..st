header-loading
dataSizeFrom: byteStream
	^self intFrom: (byteStream next: self sizeBytesCount)