as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self joint_names: OrderedCollection new . 
	 self transforms: OrderedCollection new . 
	 self twist: OrderedCollection new . 
	 self wrench: OrderedCollection new . 
