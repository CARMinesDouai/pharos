topics
publish: data type: topicType onTopic: aTopic

	^OSProcess thisOSProcess waitForCommandOutput: (self rospath,'rostopic pub ',aTopic, ' ', topicType, ' ', data).