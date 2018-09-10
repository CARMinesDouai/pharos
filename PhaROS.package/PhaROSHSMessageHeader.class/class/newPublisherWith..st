instance creation
newPublisherWith: aMessageConfigurationBlock
	^ self configure: self newPublisher with:  aMessageConfigurationBlock.