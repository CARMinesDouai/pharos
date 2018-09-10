as yet unclassified
initialize
	super initialize.
	 self terminate_status: 0. 
	 self ignore_cancel: false. 
	 self result_text: ''. 
	 self the_result: 0. 
	 self is_simple_client: false. 
	 self delay_accept:  Duration seconds: 0. 
	 self delay_terminate:  Duration seconds: 0. 
	 self pause_status:  Duration seconds: 0. 
