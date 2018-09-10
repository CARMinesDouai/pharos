topic-consume
interestedIn: aTopicName typedAs: aTypeId for: aCallback
	self register: aCallback for:  (self subscriber: aTopicName  typedAs:  aTypeId). 

		