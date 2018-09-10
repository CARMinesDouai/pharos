serialize
nextEncodedString
	| length aByteArray |

	
	[
		length := self nextEncodedUint32.
	]on: Error do: [
		PhaROSUnexpextedValue signal: 'Unable to load string size'.
	].
	self verifyDataAvailability: (length).
	aByteArray := ByteArray new: length.

	stream nextInto: aByteArray.
	^aByteArray asString.
