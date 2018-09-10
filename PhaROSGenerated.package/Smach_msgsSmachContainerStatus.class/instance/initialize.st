as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self path: ''. 
	 self initial_states: OrderedCollection new . 
	 self active_states: OrderedCollection new . 
	 self local_data: ''. 
	 self info: ''. 
