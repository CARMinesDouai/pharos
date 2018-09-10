as yet unclassified
initialize
	super initialize.
	 self name: ''. 
	 self id: Uuid_msgsUniqueID new. 
	 self platform_info: Rocon_std_msgsMasterInfo new. 
	 self running_interactions: OrderedCollection new . 
