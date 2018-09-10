as yet unclassified
getBusInfo: aCallerId
	 | info node |
		
	info := transport connections inject: Set new into: [ :set :connection | 
		set addAll: connection busInfo. set. 
		"topic busInfoFor: owner"
	].

	 ^{ 1 . 'bus info' . info asArray }.
	