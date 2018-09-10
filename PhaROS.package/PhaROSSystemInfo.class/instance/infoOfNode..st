nodes
infoOfNode: aNodeName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosnode info ', aNodeName).
	