messages
md5OfMessage: aMessageName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rosmsg md5 ', aMessageName).
	