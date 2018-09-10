messages
showMessage: aMessageName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosmsg show ', aMessageName).
	