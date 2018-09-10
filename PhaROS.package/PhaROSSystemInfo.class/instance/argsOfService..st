services
argsOfService: aService

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: '/opt/ros/indigo/bin/rosservice args ', aService.
	^ lst subStrings: String lf.