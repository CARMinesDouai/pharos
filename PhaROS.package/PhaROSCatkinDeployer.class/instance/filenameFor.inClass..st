generating - scripts methods
filenameFor: selector inClass: aPackageClass

	|filename|
	 
	filename := selector asString copyReplaceAll: 'script' with: '' .
	filename at:1 put: ((filename at:1) asLowercase).
	
	[filename indexOfFirstUppercaseCharacter = 0] whileFalse: [
		| upper |
		upper := (filename at: filename indexOfFirstUppercaseCharacter) asString.
		filename := filename copyReplaceAll: upper with: '_', upper asLowercase .
	].
	^ (aPackageClass name asString asLowercase, '_' , filename, '.st' )