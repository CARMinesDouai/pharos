as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self image: Sensor_msgsImage new. 
	 self f: 0.0. 
	 self T: 0.0. 
	 self valid_window: Sensor_msgsRegionOfInterest new. 
	 self min_disparity: 0.0. 
	 self max_disparity: 0.0. 
	 self delta_d: 0.0. 
