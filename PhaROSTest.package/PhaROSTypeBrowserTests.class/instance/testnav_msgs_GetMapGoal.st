test-nav_msgs/
testnav_msgs_GetMapGoal
	| definition | 
	definition :=  browser type: 'nav_msgs/GetMapGoal'. 
	self assert: definition typeName = 'nav_msgs/GetMapGoal'.
	self assert: definition md5Sum = 'd41d8cd98f00b204e9800998ecf8427e'.
		