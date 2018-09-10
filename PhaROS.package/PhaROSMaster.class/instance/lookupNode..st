API
lookupNode: nodeName
	^ nodes at: nodeName ifAbsentPut:[
		self error: ' No local node ', nodeName.
	 ].
	