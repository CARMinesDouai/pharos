initialize-release
initialize 
	super initialize.
	serviceProvidersDict := Dictionary new.
	topicPublishersDict := Dictionary new.
	topicSubscribersDict := Dictionary new