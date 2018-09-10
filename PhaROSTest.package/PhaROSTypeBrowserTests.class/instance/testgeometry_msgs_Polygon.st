test-geometry_msgs/
testgeometry_msgs_Polygon
	| definition | 
	definition :=  browser type: 'geometry_msgs/Polygon'. 
	self assert: definition typeName = 'geometry_msgs/Polygon'.
	self assert: definition md5Sum = 'cd60a26494a087f577976f0329fa120e'.
		