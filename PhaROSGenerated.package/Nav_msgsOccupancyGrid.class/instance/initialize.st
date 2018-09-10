as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self info: Nav_msgsMapMetaData new. 
	 self data: OrderedCollection new . 
