services
typeOfService: aServiceName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosservice type ', aServiceName).
	