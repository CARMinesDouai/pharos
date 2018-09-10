initialize-release
addPublishers: publishers forTopic: topic
	| previousPublishers |
	previousPublishers := topicPublishersDict at: topic ifAbsent: [#()].
	topicPublishersDict at: topic put: (publishers, previousPublishers) 