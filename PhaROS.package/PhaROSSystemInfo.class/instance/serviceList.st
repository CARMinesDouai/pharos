services
serviceList

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosservice list'.
	^ lst subStrings: String lf.