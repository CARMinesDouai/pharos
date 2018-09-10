test-std_msgs/
teststd_msgs_Header
	| definition | 
	definition :=  browser type: 'std_msgs/Header'. 
	self assert: definition typeName = 'std_msgs/Header'.
	self assert: definition md5Sum = '2176decaecbce78abc3b96ef049fabed'.
		