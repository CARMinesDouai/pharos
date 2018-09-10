test-geometry_msgs/
testgeometry_msgs_Transform
	| definition | 
	definition :=  browser type: 'geometry_msgs/Transform'. 
	self assert: definition typeName = 'geometry_msgs/Transform'.
	self assert: definition md5Sum = 'ac9eff44abf714214112b05d54a3cf9b'.
		