events
on: aStatus do: aCallback
	(callbacks 
		at: aStatus 
		ifAbsentPut: [ OrderedCollection new ]) add: aCallback