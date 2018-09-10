as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self id: ''. 
	 self instance_id: ''. 
	 self active: false. 
	 self heartbeat_timeout: 0.0. 
	 self heartbeat_period: 0.0. 
