accessing
pose
	(pose isNil and: [ parent isNil ]) ifTrue: [
		" fixed "
		^ PhaROSPose zero.	
	].
	^ pose.