as yet unclassified
lookupTopic: aTopicName typedAs: aTypeId
	| topic |
	topic :=  topics at: aTopicName ifAbsentPut:[
		PhaROSTopic new name: aTopicName; type: aTypeId; typeFactory:( self typeFactory: aTypeId ) yourself.
	  ].

	topic type ifNil: [ 
		topic type: aTypeId .
		topic typeFactory:( self typeFactory: aTypeId )
	].
	self assert: topic type = aTypeId.
	^ topic.