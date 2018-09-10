parameters
deleteParameter: aParam

	^ OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosparam delete ', aParam.
	