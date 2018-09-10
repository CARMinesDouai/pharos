as yet unclassified
pseudoTopicBetween:  aFrameID and: anOtherFrameID 
	^ interested at: (aFrameID, anOtherFrameID) ifAbsentPut: [
		PhaROSFrameRelativePoseAnnouncer from: (self at: aFrameID) to: (self at: anOtherFrameID).
	]. 
	