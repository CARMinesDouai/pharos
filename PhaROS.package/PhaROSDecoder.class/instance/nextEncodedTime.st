as yet unclassified
nextEncodedTime
	self verifyDataAvailability: (4 * 2).
 ^ PhaROSTimestamp fromUnixTime: self nextEncodedUint32  nanoSeconds: self nextEncodedUint32.
	