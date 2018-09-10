as yet unclassified
nextEncodedInt8
	| digit |
	self verifyDataAvailability.
	digit := stream next.
	^digit < 128 ifTrue:[ 
		digit
	]ifFalse: [
		-16r100 + digit
	]