*PhaROS
outerProduct: anOtherMatrix

	self assert: self columnCount = anOtherMatrix columnCount.
	self assert: self rowCount = anOtherMatrix rowCount.
	self assert: self rowCount = 1. 
	
	^ Matrix rows: self columnCount  columns:  self columnCount  tabulate: [ :r :c |
			(self at: 1 at: r) * (anOtherMatrix at:1 at: c)
	].