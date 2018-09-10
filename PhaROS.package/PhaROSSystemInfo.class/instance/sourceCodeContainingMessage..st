messages
sourceCodeContainingMessage: aMessageName

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosmsg users ', aMessageName.
	^ lst subStrings: String lf.