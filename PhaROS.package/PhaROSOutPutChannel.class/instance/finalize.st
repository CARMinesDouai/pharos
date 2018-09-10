service
finalize
	"self owner unregisterPublisherFrom: topic name.
	"
	subscribers select:[ : s | s isKindOf: PhaROSInternalNodeLink ] thenDo: [
		: link | link close.	
	].
	
	self initialize.
	