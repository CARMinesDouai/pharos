*PhaROS
signWith0Positive
	^ self >= 0 ifTrue: [ ^ 1 ] ifFalse: [ ^ -1 ].