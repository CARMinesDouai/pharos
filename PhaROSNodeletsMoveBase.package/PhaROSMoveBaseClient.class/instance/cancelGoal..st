accessing
cancelGoal: aGoal
	cancelGoal send: [ : msg |
		msg id: aGoal id.
		msg stamp: aGoal stamp.	
	]