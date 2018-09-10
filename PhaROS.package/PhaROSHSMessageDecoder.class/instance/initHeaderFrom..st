header-loading
initHeaderFrom: byteArray 
	| byteStream |
	byteStream := byteArray readStream.
	[byteStream atEnd] whileFalse: [
		|fieldSize|
		fieldSize := self dataSizeFrom: byteStream.
		self initFieldFrom: (byteStream next: fieldSize).
	]
