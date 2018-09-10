as yet unclassified
broadcastEntitiesAsTF
	
	self nodelets transformation tf: [ : msg | 
		entities values collect: [ : e | e asTransformStampedRelativeTo:'/map'. ] thenDo: [ : t |  msg addTransform: t ].
	].
	
	(Delay forMilliseconds: 500) wait.