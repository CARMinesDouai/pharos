as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self path: ''. 
	 self children: OrderedCollection new . 
	 self internal_outcomes: OrderedCollection new . 
	 self outcomes_from: OrderedCollection new . 
	 self outcomes_to: OrderedCollection new . 
	 self container_outcomes: OrderedCollection new . 
