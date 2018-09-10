events
onRejected: aBlock
	^ self on: 'actionlib_msgs/GoalStatus' asPhaROSTypeClass rejected  do: aBlock .