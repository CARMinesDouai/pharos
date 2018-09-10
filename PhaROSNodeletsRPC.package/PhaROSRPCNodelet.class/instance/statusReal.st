as yet unclassified
statusReal
	
	 |GoalStatusClass|
	 GoalStatusClass := 'Actionlib_msgs/GoalStatus' asPhaROSTypeClass.
		
	 currentGoal  ifNotNil: [ 
	
		({ 
		  GoalStatusClass active.
		  GoalStatusClass recalled . 
		   GoalStatusClass recalling .  
		   GoalStatusClass preempted . 
		   GoalStatusClass preempting  } includes: currentGoal status) ifTrue: [
			^ PhaROSRPCNodelet moving.	
		].
	
		GoalStatusClass succeeded = currentGoal status ifTrue: [
			
			^ PhaROSRPCNodelet arrived.
			
		].
		GoalStatusClass pending = currentGoal status ifTrue: [
			^ PhaROSRPCNodelet waiting.
		].
	
	       ^ PhaROSRPCNodelet arrived .	
	
	].
	path ifNil: [
		^PhaROSRPCNodelet finished. 
	] ifNotNil:[ 
		^ PhaROSRPCNodelet waiting.
	]
	