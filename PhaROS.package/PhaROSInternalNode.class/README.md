PhaROSInternalNode is a ROSNode written in PhaROS i.e. internal to Pharo and exported to ROS.

PhaROSInternalNode represent a basic execution node in the ROS environment. Each PhaROSNode is related with a XMLRPC Server and client, in order to make all the process of connection with other nodes and a TCP server, for incoming connections. 
In terms os usage, PhaROSNode is thinked to be subclassed, and specialized for each case. 

In order to reduce the sources needed by a node, the responsibilities are slipted into other objects, PhaROSPublisher and PhaROSSubscriber, which are lazy initialized, and are the responsibles of spawning server processes.
	
In order to relate with other nodes through topics, It counts with messages for publishing and subscribing:
	
	
	1- publishing:
		a- sendTo: aTopicID a: [:msg | "configure here your message "]
		b- sendTo: aTopicID typedAs: aTypeID a: [:msg |  "configure here your message "]. 
		
	2- subscribing:
		a- interestedIn: aTopicID.
		b- interestedIn: aTopicID typedAs: aTypeID. 
		

	Is expected for a subclass to define a block that work with the incoming messages 
	
	        receiverDelegate: [ :msg :chn | ].
	
	Or to redefine the message 
	
	        receive: aMessage from: aChannel
	
	That receives a message of the type defined by the topic in the ROS system, and a communication channel.
	

PhaROSNode already counts with some subclasses that solve some common problems: 

	 1- PhaROSBlockNode
		This class has a soul block, that allows to define an active routine of execution of the node in a block.
		In order to execute it, there is a message
			
		PhaROSBlockNode>>execute.
	       

	2- PhaROSBlockProcessNode
		This class is based on PhaROSBlockNode, but it put the active routine in a new process.  The messages to manage the related process are:

		PhaROSBlockProcessNode>>startUp.
		PhaROSBlockProcessNode>>terminate.

	3- PhaROSNodeHandle
		This class is based in PhaROSNode. The idea of this class is to make possible to easy compose behaviors, using the node as communication handle. In order to achieve that, PhaROSNodeHandle makes a second dispatching of incomming messages, letting have several callbacks for the same message.
		Also gives an easier way to deal with topics
		
		a- publishing:
			PhaROSNodeHandle>>buildConnectionFor: aTopicName.
			
			This method returns a PhaROSTopicConectionBuilder.
			{ PhaROSTopicConectionBuilder documentation}
			
			
		b- subscribing
			PhaROSNodeHandle>>topicPublisher: aTopicName typedAs: aTypeName
		
			This method returns a PhaROSTopicPublisher.
			{PhaROSTopicConectionBuilder documentation}	
			