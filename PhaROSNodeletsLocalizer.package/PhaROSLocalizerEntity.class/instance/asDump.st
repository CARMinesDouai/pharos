as yet unclassified
asDump
	| ms | 
	ms := (measures inject:'{' into: [ :acc : mr | acc, mr asDump , '.']), '}'.
	^ 'PhaROSLocalizerEntity new id: {1}; measures: {2}; adding: {3};yourself' format: { id asString . ms . adding asString  }.
	