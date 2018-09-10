as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self orientation: Geometry_msgsQuaternion new. 
	 self orientation_covariance:  (OrderedCollection new: 9). 
	 self angular_velocity: Geometry_msgsVector3 new. 
	 self angular_velocity_covariance:  (OrderedCollection new: 9). 
	 self linear_acceleration: Geometry_msgsVector3 new. 
	 self linear_acceleration_covariance:  (OrderedCollection new: 9). 
