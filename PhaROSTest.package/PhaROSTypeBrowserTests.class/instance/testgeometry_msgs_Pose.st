test-geometry_msgs/
testgeometry_msgs_Pose
	| definition | 
	definition :=  browser type: 'geometry_msgs/Pose'. 
	self assert: definition typeName = 'geometry_msgs/Pose'.
	self assert: definition md5Sum = 'e45d45a5a1ce597b249e23fb30fc871f'.
		