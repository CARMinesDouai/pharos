parameters
setParameter: aParam toValue: aValue

	^ OSProcess thisOSProcess waitForCommandOutput: self rospath,'rosparam set ', aParam, ' ', aValue.
	