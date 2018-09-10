test-turtlesim/
testturtlesim_Velocity
		| definition | 
			definition :=  browser type: 'geometry_msgs/Twist'. 
			self assert: definition typeName = 'geometry_msgs/Twist'.
			self assert: definition md5Sum =  '9f195f881246fdfa2798d1d3eebca84a'.
		