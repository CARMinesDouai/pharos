parameters
getParameter: aParam

	^ OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosparam get ', aParam.
	