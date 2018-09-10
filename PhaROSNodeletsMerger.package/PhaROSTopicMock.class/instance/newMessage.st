as yet unclassified
newMessage 
	| msg |
	msg := 'geometry_msgs/PoseStamped' asPhaROSTypeClass new. 
	messages add: msg. 
	^ msg.