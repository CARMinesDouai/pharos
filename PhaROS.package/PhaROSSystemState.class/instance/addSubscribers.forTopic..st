initialize-release
addSubscribers: subscribers forTopic: topic
	| previousSubscribers |
	previousSubscribers := topicSubscribersDict at: topic ifAbsent: [#()].
	topicSubscribersDict at: topic put: (subscribers, previousSubscribers)