encoding
verifyIf: aNumber isBetween: aLower and: aHigher
	" the implementation of x between: a and: b  is  x belongs to (a, b). But i need x belongs to [a, b]. Thats why i use (a-1; b+1)"
	(aNumber between: aLower   and: aHigher ) ifFalse: [
			self error: ' number should be in the proper interval '.
	].