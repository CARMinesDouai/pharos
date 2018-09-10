as yet unclassified
testMergerTransformation
	| merger inputA inputB output transformationExecuted |
	
	merger := PhaROSMerger new. 
	inputA := PhaROSTopicFluxMock new. 
	inputB := PhaROSTopicFluxMock new. 
	output := PhaROSTopicPublisherMock new. 
	
	transformationExecuted := false.
	merger merge: inputA with: inputB using: [ :outputMessage : b : a | 
		transformationExecuted := true.
		self assert: (output hasCreated: outputMessage ).	
		self assert: (inputA hasCreated: a).
		self assert: (inputB hasCreated: b). 
	] redirectingTo: output.


	inputA mockMessage. 
	self deny: transformationExecuted.
	
	inputB mockMessage.
	
	self assert: transformationExecuted.
	
	transformationExecuted := false.
	
	inputB mockMessage.
	self assert: transformationExecuted.
	
	transformationExecuted := false.
	
	(Delay forMilliseconds: 500) wait.
	inputB mockMessage.
	self deny: transformationExecuted.
	
	
	inputA mockMessage. 
	self assert: transformationExecuted.
	
	self assert: output receivedSend.
	
	
"merge: aConnectedTopicFlux with: anOtherConnectedTopicFlux using: aTransformation when: aCondition redirectingTo: aTopicPublisher"