output
sendTo: aTopicName typedAs: aTypeId a: aMessageConfigurationBlock
	^ (self publisher: aTopicName typedAs: aTypeId) send: aMessageConfigurationBlock.
	