services
infoOfService: aServiceName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosservice info ', aServiceName).
	