instance creation
newServiceClientWith: aMessageConfigurationBlock
	^ self configure: self newServiceClient with:  aMessageConfigurationBlock.