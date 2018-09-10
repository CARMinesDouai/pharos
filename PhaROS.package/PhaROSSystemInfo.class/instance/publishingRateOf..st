topics
publishingRateOf: aTopicName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rostopic hz ', aTopicName).
	