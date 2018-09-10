topics
findTopicsFor: aTopicType

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rostopic find ', aTopicType).
	^ lst subStrings: String lf.
	