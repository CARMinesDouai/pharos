as yet unclassified
verifyDataAvailability: anAmount
	(self hasLeft: anAmount ) ifFalse: [ self error: 'There are no more data'].