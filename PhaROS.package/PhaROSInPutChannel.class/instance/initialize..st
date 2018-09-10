as yet unclassified
initialize: aBlockPublisher
	self fetchPublishersFrom: aBlockPublisher.
	processResult := self paralellize looping spinOnce asStickyReference.
	 