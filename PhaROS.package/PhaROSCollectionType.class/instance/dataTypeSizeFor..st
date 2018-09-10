as yet unclassified
dataTypeSizeFor: aValue
self flag: #cambiarEstooo. " "

	(self isAPossibleValue: aValue ) ifFalse: [
		PhaROSUnexpextedValue signal: 'Unexpected value'.
	].
	
	^(aValue inject: 0 into:[
		:acc :val | 
		acc + (self  relatedType dataTypeSizeFor: val ).
	]).