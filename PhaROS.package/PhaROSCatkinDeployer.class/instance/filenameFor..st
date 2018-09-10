generating - scripts methods
filenameFor: aSelector
	|filename|
	 
	filename := aSelector copyReplaceAll: 'script' with: '' .
	filename at:1 put: ((filename at:1) asLowercase).
	
	[filename indexOfFirstUppercaseCharacter = 0] whileFalse: [
		| upper |
		upper := (filename at: filename indexOfFirstUppercaseCharacter) asString.
		filename := filename copyReplaceAll: upper with: '_', upper asLowercase .
	].
	^ filename.