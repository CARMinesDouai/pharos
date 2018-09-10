as yet unclassified
initialize
	super initialize.
	 self target_frame: ''. 
	 self source_frame: ''. 
	 self source_time:  PhaROSTimestamp now. 
	 self timeout:  Duration seconds: 0. 
	 self target_time:  PhaROSTimestamp now. 
	 self fixed_frame: ''. 
	 self advanced: false. 
