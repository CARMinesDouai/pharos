accessing
poseRelativeTo: anOtherPose
	^ PhaROSPose position: (self position -  anOtherPose position) orientation: (anOtherPose orientation * self orientation inverse ).