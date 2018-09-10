as yet unclassified
encodeInto: aClass named: aMethodName
	aClass class compile: (
		(self entities inject: aMethodName, ' ^ ''' into: [ : acc : ent | acc, ent asDump, '---']), ''''
	).