construction
remove: aName
	types at:aName ifPresent: [
		:type |
		type erase.
		types removeKey: aName.
	]
	