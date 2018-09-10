as yet unclassified
inform

	self checkFrame: fromFrame.
	self checkFrame: toFrame.

	self receive: (fromFrame poseRelativeTo: toFrame) from: self. 