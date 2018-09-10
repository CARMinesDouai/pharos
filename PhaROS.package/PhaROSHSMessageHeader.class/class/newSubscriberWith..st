instance creation
newSubscriberWith: aMessageConfigurationBlock
	^ self configure: self newSubscriber with:  aMessageConfigurationBlock.