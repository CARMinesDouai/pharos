as yet unclassified
initialize
	super initialize.
	 self topic: ''. 
	 self node_pub: ''. 
	 self node_sub: ''. 
	 self window_start:  PhaROSTimestamp now. 
	 self window_stop:  PhaROSTimestamp now. 
	 self delivered_msgs: 0. 
	 self dropped_msgs: 0. 
	 self traffic: 0. 
	 self period_mean:  Duration seconds: 0. 
	 self period_stddev:  Duration seconds: 0. 
	 self period_max:  Duration seconds: 0. 
	 self stamp_age_mean:  Duration seconds: 0. 
	 self stamp_age_stddev:  Duration seconds: 0. 
	 self stamp_age_max:  Duration seconds: 0. 
