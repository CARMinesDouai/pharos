serialize
decode: aFLDecoder 
	| val |	
	val := aFLDecoder nextEncodedByte.
	val = 0 ifTrue: [
		^ false.	
	].
	val = 1 ifTrue: [
		^ true.	
	].
	
	self signal: 'Unexpected value'.