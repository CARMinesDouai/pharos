initialize-release
initializeWith: aName and: aTurtlesimNodelet
	name:= aName.
	turtlesimNodelet := aTurtlesimNodelet.
	
	velocityOut := turtlesimNodelet rosnode topicPublisher: '/achao' typedAs: 'geometry_msgs/Twist'.
	(turtlesimNodelet rosnode buildConnectionFor: '/',aName,'/color_sensor') 
			typedAs: 'turtlesim/Color'; 
			for: [ : aColor | self currentColor: aColor ];
	 		connect.
			
	(turtlesimNodelet rosnode buildConnectionFor: '/',aName,'/pose') 
			typedAs: 'turtlesim/Pose'; 
			for: [ : aPose | self currentPose: aPose ];
			connect.
	
	self moveAt: #(0.0 0.0 0.0) and: #(0.0 0.0 0.0). 