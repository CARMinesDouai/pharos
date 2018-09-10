as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self set_point: 0.0. 
	 self process_value: 0.0. 
	 self process_value_dot: 0.0. 
	 self error: 0.0. 
	 self time_step: 0.0. 
	 self command: 0.0. 
	 self p: 0.0. 
	 self i: 0.0. 
	 self d: 0.0. 
	 self i_clamp: 0.0. 
	 self antiwindup: false. 
