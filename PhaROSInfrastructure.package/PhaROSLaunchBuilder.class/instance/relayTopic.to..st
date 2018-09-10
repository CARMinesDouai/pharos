util
relayTopic: aTopicID to: anOtherTopicID 
	|conf |
	
	conf := self package: 'topic_tools' 
				type:'relay'  
				named: (aTopicID normalizeFrame, '_' ,anOtherTopicID normalizeFrame, '_relay').
				
	conf args: ('/{1} /{2}' format: {aTopicID normalizeFrame . anOtherTopicID normalizeFrame }).
	conf respawn: 'false'.
	^ conf.