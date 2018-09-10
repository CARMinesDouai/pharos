initialize-release
useConstants: aConstantsArray 
	aConstantsArray do: [ : constant |
		self constants at: constant name put: constant value.
	]
	