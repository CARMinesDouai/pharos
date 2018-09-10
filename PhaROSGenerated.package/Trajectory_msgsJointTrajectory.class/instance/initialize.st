as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self joint_names: OrderedCollection new . 
	 self points: OrderedCollection new . 
