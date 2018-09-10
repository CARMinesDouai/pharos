topics
infoOfTopic: aTopicName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rostopic info ', aTopicName).
	