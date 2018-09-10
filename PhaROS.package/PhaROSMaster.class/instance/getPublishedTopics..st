API-Data-Accessors
getPublishedTopics: aCallerId
	^ (self getSystemState: aCallerId) publishedTopics.

	