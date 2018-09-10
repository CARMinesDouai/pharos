as yet unclassified
initialize
	super initialize.
	 self id: Uuid_msgsUniqueID new. 
	 self request: Rocon_std_msgsStringsRequest new. 
