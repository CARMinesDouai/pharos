nodes
killNode: aNodeName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosnode kill ', aNodeName).
	