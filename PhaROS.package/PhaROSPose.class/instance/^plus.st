operators
+ anOtherPose	 	
	^ PhaROSPose 	position: ((anOtherPose orientation rotatePosition: self position) + anOtherPose position) 
					orientation: (anOtherPose orientation * self orientation).