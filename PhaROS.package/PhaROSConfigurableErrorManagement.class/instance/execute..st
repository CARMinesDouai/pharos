as yet unclassified
execute: aBlock
	^ aBlock on: Error do: [ :e |
		self manageError: e.
		e signal.
	]