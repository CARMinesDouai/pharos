as yet unclassified
finalize
	nodelets valuesDo: #finalize.
	nodelets removeAll.
	controller := nil.