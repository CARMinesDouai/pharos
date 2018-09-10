as yet unclassified
initialPose: aPose
	self debug:' setting' . 
	self initialPoseOut send: [
		: msg |
		msg header frame_id: '/map'.
		self setCovariance: msg pose.
		msg pose pose: aPose asGeometry_msgsPose.
	]. 
