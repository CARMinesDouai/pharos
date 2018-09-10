testing
testUnregisterSubscriber
	| currentData |
	self testRegisterSubscriber.
	currentData :=  master  unregisterSubscriber: self callerId  from: 'rosout'  andCallerUri: 'http://127.0.0.1:9090/'.
	self assert: currentData = 1.
	currentData :=  master unregisterSubscriber: self callerId  from: 'rosout'  andCallerUri: 'http://127.0.0.1:9090/'.
	self assert: currentData = 0.
	

