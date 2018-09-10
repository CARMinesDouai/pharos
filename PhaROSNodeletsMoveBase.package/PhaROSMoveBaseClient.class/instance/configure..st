initialization
configure: aPackage
	
	self consumeCompressedFeedbackFor: aPackage.
	self consumeStatusFor: aPackage.
	
	self initializeMovebaseGoalPublisherFor: aPackage.
	self initializeCancelGoalPublisherFor: aPackage.
	