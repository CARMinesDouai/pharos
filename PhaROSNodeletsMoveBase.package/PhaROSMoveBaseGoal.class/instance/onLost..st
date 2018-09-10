events
onLost: aBlock
	^ self 
		on: 'actionlib_msgs/GoalStatus' asPhaROSTypeClass lost 
		do: aBlock .