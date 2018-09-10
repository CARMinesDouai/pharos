topic-consume
interestedIn: aTopicName for: aCallback
	self register: aCallback for:  (self lookupTopic: aTopicName).

	