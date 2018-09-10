messages
messageListOfPackage: aPackageName

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosmsg package ', aPackageName.
	^ lst subStrings: String lf.