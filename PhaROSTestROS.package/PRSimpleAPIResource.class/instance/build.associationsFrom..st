utilities
build: aNumber associationsFrom: aTokenList
	| coll |
	(aTokenList size < (aNumber * 2)) ifTrue: [self error: 'Token list to small'].
	
	coll := OrderedCollection new: aNumber.
	1 to: aNumber * 2 by: 2 do: [ :idx |
		coll add: (( aTokenList at: idx) -> ( aTokenList at: idx + 1))].
	^coll