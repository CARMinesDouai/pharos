operators
- anOtherPose
	^ PhaROSPose position: (self position -  anOtherPose position) orientation: (self orientation - anOtherPose orientation).