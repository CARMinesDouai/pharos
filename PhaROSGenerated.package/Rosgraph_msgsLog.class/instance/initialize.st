as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self level: 0. 
	 self name: ''. 
	 self msg: ''. 
	 self file: ''. 
	 self function: ''. 
	 self line: 0. 
	 self topics: OrderedCollection new . 
