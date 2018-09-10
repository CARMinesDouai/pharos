topics
printMessageOf: aTopicName

	^ OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rostopic echo -n 1 ', aTopicName).
	