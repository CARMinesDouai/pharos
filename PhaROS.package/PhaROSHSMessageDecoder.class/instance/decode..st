decoding
decode: byteStream
	|  headerSize |
	
	[" Header parsing "
		headerSize := (self dataSizeFrom: byteStream).
		self initHeaderFrom: (byteStream next: headerSize).
	] on: Error do: [ :e | 
		PhaROSHeaderVerifier new verify: tcpmessage. 
	].

	(self header includesKey: #error) ifTrue: [  self error: (self header at: #error)].
	^tcpmessage.