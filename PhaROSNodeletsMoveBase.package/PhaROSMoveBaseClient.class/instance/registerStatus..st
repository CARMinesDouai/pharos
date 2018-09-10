accessing
registerStatus: aGoalStatus
	goals
		at: aGoalStatus goal_id id
		ifPresent: [ :goal | 
			goal status: aGoalStatus status.
			goal text: aGoalStatus text ]
		ifAbsent: [ 	"ignore error, do nothing"  ]