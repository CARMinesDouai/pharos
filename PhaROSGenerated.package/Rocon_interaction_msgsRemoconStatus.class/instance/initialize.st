as yet unclassified
initialize
	super initialize.
	 self platform_info: Rocon_std_msgsMasterInfo new. 
	 self uuid: ''. 
	 self running_interactions: OrderedCollection new . 
	 self version: ''. 
