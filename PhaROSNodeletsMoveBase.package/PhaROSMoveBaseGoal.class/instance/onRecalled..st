events
onRecalled: aBlock
	^ self on: 'actionlib_msgs/GoalStatus' asPhaROSTypeClass recalled  do: aBlock .