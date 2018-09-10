as yet unclassified
subscriber: aTopicID typedAs: aTypeID
	^ transport subscriber: (self resolveName: aTopicID) typedAs: aTypeID
	