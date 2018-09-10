accessing
masterUrl
	^ masterUrl ifNil: [ 
			masterUrl := OSEnvironment default at: 'ROS_MASTER_URI' 
								ifAbsent: [ 'http://', self defaultMasterIp, ':', self defaultMasterPort asString ] ]