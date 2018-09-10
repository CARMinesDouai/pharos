as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self status: Sensor_msgsNavSatStatus new. 
	 self latitude: 0.0. 
	 self longitude: 0.0. 
	 self altitude: 0.0. 
	 self position_covariance:  (OrderedCollection new: 9). 
	 self position_covariance_type: 0. 
