serialize
decode: aFLDecoder 
	[
		^ aFLDecoder nextEncodedUint16.
	] on: Error do: [
		self signal: 'cannot load value'.
	].