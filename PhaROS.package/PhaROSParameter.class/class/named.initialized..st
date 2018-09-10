as yet unclassified
named: aName initialized: aValue
	^ self new name: aName; relatedClass: (aValue class parameterClass ); setNotBinded: aValue; yourself 