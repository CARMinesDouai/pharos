test-control_msgs/
testcontrol_msgs_GripperCommand
	| definition | 
	definition :=  browser type: 'control_msgs/GripperCommand'. 
	self assert: definition typeName = 'control_msgs/GripperCommand'.
	self assert: definition md5Sum = '680acaff79486f017132a7f198d40f08'.
		