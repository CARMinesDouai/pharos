as yet unclassified
texts
	|GoalStatusClass|
	GoalStatusClass := 'actionlib_msgs/GoalStatus' asPhaROSTypeClass.

	^ {
		GoalStatusClass aborted -> 'Aborted' .
		GoalStatusClass active -> 'Active' .		
		GoalStatusClass lost -> 'Lost' .
		GoalStatusClass pending -> 'Pending' .
		GoalStatusClass preempted -> 'Preempted' .
		GoalStatusClass preempting  -> 'Preempting' .
		GoalStatusClass recalled -> 'Recalled' .
		GoalStatusClass recalling -> 'Recalling' .
		GoalStatusClass rejected -> 'Rejected' .
		GoalStatusClass succeeded  -> 'Succeded' .
	} asDictionary 