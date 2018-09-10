nodes
nodeList

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosnode list'.
	^ lst subStrings: String lf.