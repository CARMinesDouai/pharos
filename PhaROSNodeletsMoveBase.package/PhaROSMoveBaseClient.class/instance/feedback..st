private actions
feedback: aMoveBaseFeedback
	currentPosition := PhaROSPose fromGeometry_msgsPose: aMoveBaseFeedback feedback base_position pose.
	self registerStatus: aMoveBaseFeedback status