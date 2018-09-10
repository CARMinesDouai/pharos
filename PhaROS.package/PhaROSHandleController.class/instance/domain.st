accessing
domain
	| hostName |
	hostName := OSEnvironment default getEnv: 'ROS_HOSTNAME'.
	hostName ifNotNil: [ ^hostName ].
	^NetNameResolver localHostName 