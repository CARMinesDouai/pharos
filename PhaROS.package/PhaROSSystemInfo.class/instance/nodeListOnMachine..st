nodes
nodeListOnMachine: aHostname

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosnode machine ', aHostname).
	^ lst subStrings: String lf.