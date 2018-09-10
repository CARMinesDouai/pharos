test-std_msgs/
teststd_msgs_Empty
	| definition | 
	definition :=  browser type: 'std_msgs/Empty'. 
	self assert: definition typeName = 'std_msgs/Empty'.
	self assert: definition md5Sum = 'd41d8cd98f00b204e9800998ecf8427e'.
		