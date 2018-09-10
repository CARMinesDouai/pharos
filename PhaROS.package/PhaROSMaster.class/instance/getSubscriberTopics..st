API-Data-Accessors
getSubscriberTopics: aCallerId
	^ (self getSystemState: aCallerId) subscriberTopics.

	