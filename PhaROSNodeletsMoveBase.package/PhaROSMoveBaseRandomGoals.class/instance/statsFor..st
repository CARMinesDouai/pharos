accessing
statsFor: aGoal
	^ (stats at: aGoal destination 
				ifAbsentPut: [ OrderedCollection new ]) 
			add: aGoal statusText