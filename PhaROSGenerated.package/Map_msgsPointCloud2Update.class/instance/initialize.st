as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self type: 0. 
	 self points: Sensor_msgsPointCloud2 new. 
