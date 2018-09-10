*PhaROS
dotProduct: anOtherMatrix
	|result|
	self assert: self columnCount = anOtherMatrix rowCount.
	
	result := 0 .
	1 to: self rowCount do: [ :i |
		1 to: anOtherMatrix columnCount do: [ :j |
			(self atRow: i ) with: (anOtherMatrix atColumn: j) do: [ :r :c | result := result + (r * c)].
		]
	].

	^ result. 