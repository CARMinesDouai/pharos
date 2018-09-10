converting
match: aPose
	^ adding not and: [ (self center position - aPose position ) module2d  <  0.1 ].