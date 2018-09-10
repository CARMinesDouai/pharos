as yet unclassified
nextEncodedDuration
	| duration |
	self verifyDataAvailability: (4 * 2).
	duration := Duration new.
	duration seconds: self nextEncodedUint32 nanoSeconds: self nextEncodedUint32.
	^ duration.