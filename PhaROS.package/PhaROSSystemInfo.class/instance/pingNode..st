nodes
pingNode: aNodeName

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosnode ping -c 1 ', aNodeName).
	^ lst subStrings: String lf.