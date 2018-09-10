messages
packagesContainingMessage: aMessageName

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosmsg packages ', aMessageName.
	^ lst subStrings: String lf.