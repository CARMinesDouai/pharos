topics
bandwidthUsedBy: aTopicName

	^ OSProcess thisOSProcess waitForCommandOutput: ('/opt/ros/indigo/bin/rostopic bw ', aTopicName).
	