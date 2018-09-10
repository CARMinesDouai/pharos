testing
testRegisterSubscriber
	| currentData callerURI |
	
	callerURI := 'http://127.0.0.1:9090/'.
	currentData :=  master registerSubscriber: self callerId  to: 'rosout' with: 'rosgraph_msgs/Log'  andCallerUri: callerURI.
	self deny: currentData isNil
	