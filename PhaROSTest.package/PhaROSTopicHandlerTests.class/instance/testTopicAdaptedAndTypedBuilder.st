subscribing
testTopicAdaptedAndTypedBuilder
	| node builder topicID flux  rslt | 
	
	node := PhaROSNodeMock new.
	topicID := 'aTopicID'.
	builder := (PhaROSTopicConectionBuilder node: node topicName: topicID)typedAs: 'aType'; adapted: #value \> #asString.
	
	flux := builder connect.
	
	self assert: node received =  #interestedIn:typedAs:for:.
	self assert: flux = node flux. 
	self assert: topicID = node topic.
	self assert: flux adapter  = (#value \> #asString) .
	self assert: flux condition  = PhaROSTopicFlux defaultConditional.
	self assert: (flux imInterestedIn: nil from: nil).
	 
	flux for: [ : msg | rslt := msg ].
	flux  receive: [ 1+ 2 ] from: nil. 
	
	self assert: rslt = '3'.


