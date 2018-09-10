topic-reading
distanceBetween: aFrameID and: anOtherFrameID
	self configureTfCallback.
	^ framesContainer pseudoTopicBetween: aFrameID  and: anOtherFrameID.