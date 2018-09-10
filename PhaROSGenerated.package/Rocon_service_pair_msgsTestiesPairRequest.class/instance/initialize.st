as yet unclassified
initialize
	super initialize.
	 self id: Uuid_msgsUniqueID new. 
	 self request: Rocon_service_pair_msgsTestiesRequest new. 
