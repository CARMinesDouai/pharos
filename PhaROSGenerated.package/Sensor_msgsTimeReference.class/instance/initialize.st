as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self time_ref:  PhaROSTimestamp now. 
	 self source: ''. 
