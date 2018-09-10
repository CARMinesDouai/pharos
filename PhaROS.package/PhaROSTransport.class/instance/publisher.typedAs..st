publishing
publisher: aTopicID typedAs: aTypeID
	self assert: aTypeID isValidROSName.
	^ ((master lookupTopic: aTopicID  typedAs: aTypeID) publishingChannelFor: node throught: self) publisher. 