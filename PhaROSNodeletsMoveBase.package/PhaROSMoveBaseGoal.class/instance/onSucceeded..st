events
onSucceeded: aBlock
	^ self on: 'actionlib_msgs/GoalStatus' asPhaROSTypeClass succeeded  do: aBlock .