as yet unclassified
verifyName: aName
	nodes at: aName ifPresent: [
		self error: ' Cannot be two nodes with the same name in a network '.
	] .