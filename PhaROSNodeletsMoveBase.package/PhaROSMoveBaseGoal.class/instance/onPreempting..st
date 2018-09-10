events
onPreempting: aBlock
	^ self on: 'actionlib_msgs/GoalStatus' asPhaROSTypeClass preempting  do: aBlock .