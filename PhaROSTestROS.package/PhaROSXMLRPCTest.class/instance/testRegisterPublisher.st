testing
testRegisterPublisher
	| currentData callerURI |

	callerURI := 'http://127.0.0.1:9090/'.
	currentData :=  master registerPublisher: self callerId  to: 'rosout' with: 'rosgraph_msgs/Log'  andCallerUri: callerURI .
	
	self assert: currentData size > 0.
	self assert: (currentData anySatisfy: [ :each | (each indexOfSubCollection: self masterUrl asZnUrl host) > 0]) 
		

