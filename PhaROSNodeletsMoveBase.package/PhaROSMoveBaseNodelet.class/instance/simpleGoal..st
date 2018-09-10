accessing
simpleGoal: aPose

	^ self simpleGoal send: [: msg | 
		msg header frame_id: '/map'.
		msg pose: aPose asGeometry_msgsPose.
	].