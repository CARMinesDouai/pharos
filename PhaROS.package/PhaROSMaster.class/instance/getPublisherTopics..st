API-Data-Accessors
getPublisherTopics: aCallerId
	^ (self getSystemState: aCallerId) publisherTopics.

	