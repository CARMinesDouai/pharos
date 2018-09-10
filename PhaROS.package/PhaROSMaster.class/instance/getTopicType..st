API-Data-Accessors
getTopicType: aByteString 
	aByteString  = '/scan' ifTrue: [
		^ 'sensor_msgs/LaserScan'.
	].
	aByteString  = '/tf' ifTrue: [
		^ 'tf/tfMessage'.
	].
	aByteString  = '/pose' ifTrue: [
		^ 'geometry_msgs/PoseStamped'.
	].

	aByteString  = '/odom' ifTrue: [
		^ 'nav_msgs/Odometry'.
	].

	^(self getTopicTypes:'/anArbitraryId') at: aByteString ifAbsent: [ 
		nil
	].