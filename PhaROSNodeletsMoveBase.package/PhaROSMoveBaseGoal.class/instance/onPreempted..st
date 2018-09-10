events
onPreempted: aBlock
	^ self on: 'actionlib_msgs/GoalStatus' asPhaROSTypeClass preempted  do: aBlock .