parameters
saveParametersInFile: aFileName

	^ OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosparam dump ', aFileName.
	