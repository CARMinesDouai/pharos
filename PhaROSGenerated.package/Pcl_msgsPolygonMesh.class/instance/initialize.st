as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self cloud: Sensor_msgsPointCloud2 new. 
	 self polygons: OrderedCollection new . 
