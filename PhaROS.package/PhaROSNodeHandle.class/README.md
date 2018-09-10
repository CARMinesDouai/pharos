This node represent a basic node in the ROS environment. 
	
	It is related with a XMLRPC Server and a TCP server. 
	
	Is thinked to be used as conection handle, what means that you use the node just as a bridge with ROS, without subclassit.
	
	In terms to achive it, it has a different flavor of #interestedIn: message, which adds a callback for each topic. 
	
	
	#interestedIn: aTopicID onReceive: [ :msg :chn | ].
	#interestedIn: aTopicID typedAs: aTypeID onReceive: [ :msg :chn | ]. 
	

