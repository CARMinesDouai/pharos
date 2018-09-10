as yet unclassified
registerLocalizationSensor: aPseudoTopicSubscriber
	sensor ifNotNil: [
		self error: 'There cannot be more than one sensor related to one event manager'.
	] .

	sensor := aPseudoTopicSubscriber .
	aPseudoTopicSubscriber  for: [ :lm  | self check: lm ].
	
	