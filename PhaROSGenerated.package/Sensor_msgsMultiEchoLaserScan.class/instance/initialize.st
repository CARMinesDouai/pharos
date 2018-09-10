as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self angle_min: 0.0. 
	 self angle_max: 0.0. 
	 self angle_increment: 0.0. 
	 self time_increment: 0.0. 
	 self scan_time: 0.0. 
	 self range_min: 0.0. 
	 self range_max: 0.0. 
	 self ranges: OrderedCollection new . 
	 self intensities: OrderedCollection new . 
