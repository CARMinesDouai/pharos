testing
testGetPublishedTopics	
	| currentPublisherTopics |
	currentPublisherTopics :=  master getPublishedTopics: self callerId.
	self assert: currentPublisherTopics size > 0 .
	self assert: (currentPublisherTopics allSatisfy: #isString). 