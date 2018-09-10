as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self data: OrderedCollection new . 
	 self b_o_s: 0. 
	 self e_o_s: 0. 
	 self granulepos: 0. 
	 self packetno: 0. 
