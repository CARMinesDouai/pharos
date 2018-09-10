parameters
loadParametersFromFile: aFileName

	^ OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosparam load ', aFileName.
	