as yet unclassified
dump
	| anEncoder stream |

	type check: value.

	stream := WriteStream on: (ByteArray new: (type dataTypeSizeFor: value ) + 4).
	anEncoder  := PhaROSEncoder on: stream.
	self encodePacketSize: (type dataTypeSizeFor: value) into: anEncoder.	
	
	type serialize: value into: anEncoder.
	anEncoder flush.
	^ stream contents.