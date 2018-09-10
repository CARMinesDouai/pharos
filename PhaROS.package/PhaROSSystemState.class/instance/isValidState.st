testing
isValidState
	^ ((((((topicPublishersDict keys allSatisfy: #isString )&
	(topicPublishersDict values allSatisfy: #isArray)) &
	
	topicSubscribersDict  keys allSatisfy: #isString)&
	topicSubscribersDict values allSatisfy: #isArray) &
	

	serviceProvidersDict   keys allSatisfy: #isString) &
	serviceProvidersDict values allSatisfy: #isArray) & 
	
	topicPublishersDict size + topicSubscribersDict size + serviceProvidersDict  size > 1.