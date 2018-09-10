nodes
pingAllNodesTrace

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosnode ping -a').
	^ lst