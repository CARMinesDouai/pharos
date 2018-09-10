as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self timestep:  Duration seconds: 0. 
	 self error: 0.0. 
	 self error_dot: 0.0. 
	 self p_error: 0.0. 
	 self i_error: 0.0. 
	 self d_error: 0.0. 
	 self p_term: 0.0. 
	 self i_term: 0.0. 
	 self d_term: 0.0. 
	 self i_max: 0.0. 
	 self i_min: 0.0. 
	 self output: 0.0. 
