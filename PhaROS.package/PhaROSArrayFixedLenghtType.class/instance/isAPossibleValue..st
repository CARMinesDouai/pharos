as yet unclassified
isAPossibleValue: aValue
	^ (super isAPossibleValue: aValue ) and: [ aValue size = size asNumber ].