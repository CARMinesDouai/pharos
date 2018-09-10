subscribing
testTopicConditionAdaptedAndTypedBuilder
	| node builder topicID flux  rslt conditional | 
	
	node := PhaROSNodeMock new.
	topicID := 'aTopicID'.
	
	conditional := [ : msg | msg notNil and: [msg value < 4] ].
	builder := (PhaROSTopicConectionBuilder node: node topicName: topicID) typedAs:'type'; when: conditional; adapted: #value \> #asString.
	
	flux := builder connect.
	
	self assert: node received = #interestedIn:typedAs:for:.
	self assert: flux = node flux. 
	self assert: topicID = node topic.
	self assert: flux adapter  = (#value \> #asString) .
	self assert: flux condition  = conditional.
	self deny: (flux imInterestedIn: nil from: nil).
	 
	flux for: [ : msg | rslt := msg ].

	flux  receive: [ 4 + 2 ] from: nil. 

	self assert: rslt isNil.

	
	flux  receive: [ 1+ 2 ] from: nil. 
	
	self assert: rslt = '3'.

