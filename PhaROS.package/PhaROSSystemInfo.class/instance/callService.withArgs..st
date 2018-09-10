services
callService: aService withArgs: args

	^ OSProcess thisOSProcess command: '/opt/ros/indigo/bin/rosservice call ', aService, ' ', args.
	