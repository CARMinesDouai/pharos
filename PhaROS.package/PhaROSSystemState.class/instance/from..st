initialize-release
from: statusArray
	{topicPublishersDict.  topicSubscribersDict. serviceProvidersDict} with: statusArray do: [:dict :array|
		self addAssociationsFrom: array into: dict]
