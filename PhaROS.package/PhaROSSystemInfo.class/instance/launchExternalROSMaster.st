run
launchExternalROSMaster
	masterProcess ifNil: [  
		masterProcess := ExternalUnixOSProcess forkAndExec: PhaROSSystemInfo instance rospath,'roscore'.
		500 milliSeconds wait ]

