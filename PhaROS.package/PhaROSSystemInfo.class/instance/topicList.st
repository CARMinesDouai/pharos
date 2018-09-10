topics
topicList

	|lst|
	lst := OSProcess thisOSProcess waitForCommandOutput: (self rospath,'/rostopic list').
	^ lst substrings: String lf.
	