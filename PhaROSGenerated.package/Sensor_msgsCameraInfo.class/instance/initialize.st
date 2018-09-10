as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self height: 0. 
	 self width: 0. 
	 self distortion_model: ''. 
	 self D: OrderedCollection new . 
	 self K:  (OrderedCollection new: 9). 
	 self R:  (OrderedCollection new: 9). 
	 self P:  (OrderedCollection new: 12). 
	 self binning_x: 0. 
	 self binning_y: 0. 
	 self roi: Sensor_msgsRegionOfInterest new. 
