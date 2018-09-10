instance creation
newServiceWith: aMessageConfigurationBlock
	^ self configure: self newService with:  aMessageConfigurationBlock.