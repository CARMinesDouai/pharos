instance creation
configure: aMessage with: aPosition
	self initializeMessage: aMessage.
	aMessage header frame_id: (self rosnodeResolveName: PhaROSOdometryNodelet odomFrame).
	aMessage child_frame_id: (self rosnodeResolveName: PhaROSOdometryNodelet baseLinkFrame).
	
	"Fill aMessage using aPosition pose"
	aPosition intoGeometry_msgs_Pose:  aMessage pose pose.
	
	"Fill aMessage twist using a computed twist"
	(self measurePoseDiference: aPosition) intoGeometry_msgs_Twist: aMessage twist twist.