as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self relative_humidity: 0.0. 
	 self variance: 0.0. 
