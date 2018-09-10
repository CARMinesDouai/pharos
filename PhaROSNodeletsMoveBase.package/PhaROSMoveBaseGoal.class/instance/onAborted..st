events
onAborted: aBlock
	^ self 
		on: 'actionlib_msgs/GoalStatus' asPhaROSTypeClass aborted 
		do: aBlock .