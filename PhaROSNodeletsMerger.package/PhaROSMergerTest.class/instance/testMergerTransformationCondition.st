as yet unclassified
testMergerTransformationCondition
	| merger inputA inputB output transformationExecuted condition |
	
	merger := PhaROSMerger new. 
	inputA := PhaROSTopicFluxMock new. 
	inputB := PhaROSTopicFluxMock new. 
	output := PhaROSTopicPublisherMock new. 
	condition := false. 
	transformationExecuted := false.
	
	
	merger merge: inputA with: inputB using: [ :outputMessage : b : a | 
		transformationExecuted := true.
		self assert: (output hasCreated: outputMessage ).	
		self assert: (inputA hasCreated: a).
		self assert: (inputB hasCreated: b). 
	] when: [ :b :a | 
			self assert: (inputA hasCreated: a).
			self assert: (inputB hasCreated: b). 
			condition] redirectingTo: output.


	inputA mockMessage. 
	self deny: transformationExecuted.
	
	inputB mockMessage.
	
	self deny: transformationExecuted.
	
	condition := true. 
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