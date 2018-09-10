test-sensor_msgs/
testsensor_msgs_NavSatStatus
	| definition | 
	definition :=  browser type: 'sensor_msgs/NavSatStatus'. 
	self assert: definition typeName = 'sensor_msgs/NavSatStatus'.
	self assert: definition md5Sum = '331cdbddfa4bc96ffc3b9ad98900a54c'.
		