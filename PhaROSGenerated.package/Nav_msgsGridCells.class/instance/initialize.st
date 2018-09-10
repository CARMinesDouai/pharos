as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self cell_width: 0.0. 
	 self cell_height: 0.0. 
	 self cells: OrderedCollection new . 
