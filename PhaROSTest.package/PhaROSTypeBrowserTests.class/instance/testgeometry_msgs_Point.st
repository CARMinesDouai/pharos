test-geometry_msgs/
testgeometry_msgs_Point
	| definition | 
	definition :=  browser type: 'geometry_msgs/Point'. 
	self assert: definition typeName = 'geometry_msgs/Point'.
	self assert: definition md5Sum = '4a842b65f413084dc2b10fb484ea7f17'.
		