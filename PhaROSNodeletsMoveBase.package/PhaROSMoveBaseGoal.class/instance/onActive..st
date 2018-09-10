events
onActive: aBlock
	^ self 
		on: 'actionlib_msgs/GoalStatus' asPhaROSTypeClass active 
		do: aBlock .