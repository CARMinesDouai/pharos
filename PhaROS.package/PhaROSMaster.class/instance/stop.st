service
stop
	topics valuesDo:#finalize.
	nodes valuesDo:#finalize.
	nodes removeAll.
	topics removeAll.
	Smalltalk garbageCollectMost.