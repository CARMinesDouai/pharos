as yet unclassified
isAPossibleValue: aValue
	^( aValue isKindOf: Collection ) and: [
		aValue allSatisfy: [
			:val |
			self relatedType isAPossibleValue: val.
		]	
	].