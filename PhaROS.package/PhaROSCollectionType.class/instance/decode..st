as yet unclassified
decode: aDecoder 
	^ (1 to: (self sizeFor: aDecoder ) ) collect: [
		:i |
		self relatedType decode: aDecoder.
	] .