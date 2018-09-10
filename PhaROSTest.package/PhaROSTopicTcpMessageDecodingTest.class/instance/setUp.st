testing
setUp 
	super setUp.
	expectedMessage := PhaROSHSMessageHeader newPublisherWith: [
		:msg  | 
		msg  	
			
		messageDefinition:'string data

';	
		callerId: '/rostopic_4767_1316912741557';
		latching: true;

		md5Sum: '992ce8a1687cec8c8bd883ec73ca41d1'; "Checsum for std_msgs/String"
		topic: '/chatter';
		type: 'std_msgs/String'
	].
	