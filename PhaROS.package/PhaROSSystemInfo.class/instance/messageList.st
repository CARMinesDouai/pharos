messages
messageList

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosmsg list'.
	^ lst substrings: String lf.