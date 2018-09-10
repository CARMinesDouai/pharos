services
uriOfService: aServiceName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosservice uri ', aServiceName).
	