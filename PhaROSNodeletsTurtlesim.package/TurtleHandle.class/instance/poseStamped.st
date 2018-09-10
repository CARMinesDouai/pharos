topic-reading
poseStamped
		^(turtlesimNodelet rosnode buildConnectionFor: '/',name,'/pose') 
			typedAs: 'turtlesim/Pose'; 
			adapted: PhaROSPose;
			connect.
	