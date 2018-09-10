initialize-release
initialize 
	| stop |
	super initialize.
	id := DateAndTime now asUnixTime asString.
	callbacks := Dictionary new. 
	status := 'actionlib_msgs/GoalStatus' asPhaROSTypeClass pending.
	stop := [ self stopTracking ].
	
	self onSucceeded: stop.
	self onAborted: stop.
	self onRejected: stop.
	