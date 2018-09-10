subscribing
testTopicConditionAndTypedBuilder
	| node builder topicID flux  rslt conditional | 
	
	node := PhaROSNodeMock new.
	topicID := 'aTopicID'.
	
	conditional := [ : msg | false ].
	builder := (PhaROSTopicConectionBuilder node: node topicName: topicID) typedAs:'type'; when: conditional.
	
	flux := builder connect.
	
	self assert: node received = #interestedIn:typedAs:for:.
	self assert: flux = node flux. 
	self assert: topicID = node topic.
	self assert: flux adapter  = PhaROSTopicFlux defaultAdapter adaptToAdapter.
	self assert: flux condition  = conditional.
	self deny: (flux imInterestedIn: nil from: nil).
	 
	flux for: [ : msg | rslt := msg ].
	flux  receive: [ 1+ 2 ] from: nil. 
	
	self assert: rslt isNil.


