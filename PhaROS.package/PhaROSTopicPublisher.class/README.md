PhaROSTopicPublisher is a simple object that hide the complexity of knowing the node and name/type of a topic in order to be able to send a message. 

The main message is 
	
	#send: aBlock
	
that receives a block of the shape of [ :msg | "message configuratio "]. 

And it sends a message in name of the configured node, throught the given topic. 