testing
expectedTopicTypes 
	^ {
		'/rosout' -> 'rosgraph_msgs/Log' .
		'/rosout_agg' -> 'rosgraph_msgs/Log'.
	   } asDictionary.
	
