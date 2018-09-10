topics
typeOfTopic: aTopicName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rostopic type ', aTopicName).
	