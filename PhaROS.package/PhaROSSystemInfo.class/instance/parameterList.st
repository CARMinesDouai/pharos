parameters
parameterList

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosparam list'.
	^ lst subStrings: String lf.