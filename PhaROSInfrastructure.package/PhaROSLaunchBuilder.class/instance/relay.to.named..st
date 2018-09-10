util
relay: aTopicName to: otherTopicName named: aNodeName
	| conf |
	
	conf := self package: 'topic_tools' type:'relay'  named: aNodeName .
	conf args: (' {1} {2} ' format: { aTopicName . otherTopicName}). 
	^ conf.