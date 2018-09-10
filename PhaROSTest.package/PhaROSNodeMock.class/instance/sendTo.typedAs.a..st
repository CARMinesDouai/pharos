mock
sendTo: topicName typedAs: typeID a: aBlock
	received := #sendTo:typedAs:a:.
	topic := topicName. 
	type := typeID.
	messageBlock := aBlock 