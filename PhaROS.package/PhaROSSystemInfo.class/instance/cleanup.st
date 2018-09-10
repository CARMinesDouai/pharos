nodes
cleanup

	^ OSProcess thisOSProcess waitForCommand: '/opt/ros/indigo/bin/rosnode cleanup'.
	