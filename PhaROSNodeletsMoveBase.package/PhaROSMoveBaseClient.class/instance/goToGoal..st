topic-publishing
goToGoal: aGoal
	goals at: aGoal id put: aGoal.
	aGoal client: self.
	reachedGoals := reachedGoals + 1.
	movebaseGoal
		send: [ :msg | 
			msg header frame_id: '/map'.
			msg goal_id id: aGoal id.
			msg goal_id stamp: aGoal stamp.
			msg goal target_pose header frame_id: '/map'.
			msg goal target_pose pose: aGoal destination asGeometry_msgsPose ].
	^ aGoal