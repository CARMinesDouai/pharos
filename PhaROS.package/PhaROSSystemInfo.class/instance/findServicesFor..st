services
findServicesFor: aMsgType

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosservice find ', aMsgType).
	^ lst subStrings: String lf.
	