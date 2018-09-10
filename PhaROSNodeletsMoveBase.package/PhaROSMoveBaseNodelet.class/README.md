PhaROSMoveBaseNodelet is a nodelet that adds the [movebase | http://www.ros.org/wiki/move_base ] client functionality for simple goals (it try to reach one goal per time, if you send a new goal the previous one is overriden). It also keeps track of the status of the goal, allowing to configure callbacks for each status and each goal.

	
	simpleGoal: aPose

	It sends a message asking for a goal to movebase node and returns a PhaROSGoal, which counts with the pose of destination, an id and a state that trigger the callbacks configured by any (or several) of the folllowing messages:
		
	
	onAborted:
	onSucceeded: 
	onActive:
	onLost:
	onPending:
	onPreempted:
	onPreempting:
	onRecalled:
	onRecalling:
	onRejected:
	

	All this messages receives a block of the form [: goal| ] or []. 
	


