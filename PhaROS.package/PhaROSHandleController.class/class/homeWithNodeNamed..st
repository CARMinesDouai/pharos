construction
homeWithNodeNamed: aString

	^self url: (OSEnvironment default at: 'ROS_MASTER_URI') nodeNamed: aString.
	