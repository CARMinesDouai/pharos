printing
asGeometry_msgsPose
	| gp |
	gp := 'geometry_msgs/Pose' asPhaROSTypeClass new.
	self intoGeometry_msgs_Pose:  gp.
	^ gp.