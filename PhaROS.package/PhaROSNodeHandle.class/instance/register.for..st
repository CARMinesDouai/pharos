building
register: aCallback for: aChannel
	topicHandle at: aChannel  ifPresent: [
		: aCollectionOfCallbacks | aCollectionOfCallbacks add: aCallback.
	]  ifAbsent:[
		topicHandle at: aChannel put: (Set newFrom: { aCallback }).
	] .  
	
	
	