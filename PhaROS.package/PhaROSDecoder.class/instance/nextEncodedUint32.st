as yet unclassified
nextEncodedUint32
	| n n2 firstDigit src barray |

	self verifyDataAvailability: (4).	
	
	src := stream next: 4.

	barray := ReadStream on: src reversed.

	
	[
		n := firstDigit := barray next.
		n := (n bitShift: 8) + barray next.
		n := (n bitShift: 8) + barray next.
		n := (n bitShift: 8) + barray next.
	] on: Error do: [
		PhaROSUnexpextedValue signal: 'Unable to load 32bits UInt'
	].

	^ n
