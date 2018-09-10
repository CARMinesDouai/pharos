related class building
buildClass
	| class |
		class :=  PhaROSValue subclass: self classname asSymbol
					instanceVariableNames: ''
					classVariableNames: ''
					poolDictionaries: ''
					category: 'PhaROSGenerated'.
		
		self installMethodsIn: class.
		self installConstantsIn: class.
		^ class