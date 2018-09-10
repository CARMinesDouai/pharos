as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self capability: ''. 
	 self provider: ''. 
	 self type: ''. 
	 self pid: 0. 
