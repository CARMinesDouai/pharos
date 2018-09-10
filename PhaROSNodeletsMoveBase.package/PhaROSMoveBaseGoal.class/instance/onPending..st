events
onPending: aBlock
	^ self on: 'actionlib_msgs/GoalStatus' asPhaROSTypeClass pending do: aBlock .